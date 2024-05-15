
import amqplib, { Channel, Connection } from 'amqplib'
import express from 'express'

const app = express()

app.use(express.json())

// порт запуска сервиса
const PORT = 9005

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

        // слушаем все сообщения из очереди склада
        await channel.consume('stock', (data) => {
            console.log(`Сервис склада получил информацию о платеже, товар будет списан ${Buffer.from(data!.content)}`)
            // логика списания товара с учёта склада
            channel.ack(data!);
        })
    } catch (error) {
        console.log(error)
    }
}

app.listen(PORT, () => {
    console.log(`Server running on ${PORT}`)
})
  