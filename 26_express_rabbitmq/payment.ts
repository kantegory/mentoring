
import amqplib, { Channel, Connection } from 'amqplib'
import express from 'express'

const app = express()

app.use(express.json())

// порт запуска сервиса
const PORT = 9006

// глобальные переменные для RabbitMQ
let channel: Channel, connection: Connection

connect()

async function connect() {
    try {
        const amqpServer = 'amqp://localhost:5672'
        connection = await amqplib.connect(amqpServer)
        channel = await connection.createChannel()

        // если очередь не создана, она создастся автоматически
        await channel.assertQueue('stock')
        await channel.assertQueue('cart')

        // слушаем все сообщения из очереди cart
        await channel.consume('cart', (data) => {
            console.log(`Сервис платежей получил информацию о корзине ${Buffer.from(data!.content)}`)
            
            // отправка запроса в сервис склада
            channel.sendToQueue(
                'stock',
                Buffer.from(
                    JSON.stringify({
                        ...data,
                        date: new Date(),
                    }),
                ),
            )

            channel.ack(data!);
        })
    } catch (error) {
        console.log(error)
    }
}

app.listen(PORT, () => {
    console.log(`Server running on ${PORT}`)
})
  