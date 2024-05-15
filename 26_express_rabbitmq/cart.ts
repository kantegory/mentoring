import amqplib, { Channel, Connection } from 'amqplib'
import express, { Request, Response } from 'express'

const app = express()

app.use(express.json())

// порт запуска сервиса
const PORT = 9004

// глобальные переменные для RabbitMQ
let channel: Channel, connection: Connection

connect()

// глобальные переменные для RabbitMQ
async function connect() {
    try {
        const amqpServer = 'amqp://localhost:5672'
        connection = await amqplib.connect(amqpServer)
        channel = await connection.createChannel()

        // если очередь не создана, она создастся автоматически
        await channel.assertQueue('cart')
    } catch (error) {
        console.log(error)
    }
}

app.post('/cart', (req: Request, res: Response) => {
    const data = req.body

    // отправим сообщение во все сервисы, которые слушают очередь cart
    channel.sendToQueue(
        'cart',
        Buffer.from(
            JSON.stringify({
                ...data,
                date: new Date(),
            }),
        ),
    )

    res.send('Cart submitted')
})

app.listen(PORT, () => {
    console.log(`Server running on ${PORT}`)
})
