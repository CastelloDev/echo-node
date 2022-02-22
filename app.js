const express = require('express')
const app = express()
const port = 3000

app.use('/heartbeat', (req, res) => {
  res.send(new Date().toUTCString())
})

app.listen(port, () => {
  console.log(`Listening on port ${port}`)
})
