const express = require('express')
const cookieParser = require('cookie-parser')

const app = express()
app.use(cookieParser())

app.get('/cookie-get', function (req, res) {
  res.cookie('hello', 'world', { httpOnly: false });
  res.send('cookie setted');
})

app.get('/cookie-check', function (req, res) {
  console.log('signed cookies:', req.signedCookies, 'not signed cookies:', req.cookies);

  res.send(`signed cookies: ${JSON.stringify(req.signedCookies)}, not signed cookies: ${JSON.stringify(req.cookies)}`)
})

app.listen(8080)
