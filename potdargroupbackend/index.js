// index.js
const express = require('express');
const app = express();
const cors = require('cors');
const bodyParser = require('body-parser');
const routes = require('./routes');
const path = require('path');
const nodemailer = require('nodemailer');

// const choosePrismaClient = require('./middleware/prismaMiddleware');


const port = process.env.PORT || 4000;

console.log("I am waiting for you");

// Middleware
app.use(cors());
// app.use(choosePrismaClient);

app.use(bodyParser.json({ limit: '10mb' }));
app.use(bodyParser.urlencoded({ limit: '10mb', extended: true }));
app.use(express.static(path.join(__dirname, 'public')));


console.log("Request has been come  here");
// Routes
app.use('/potdar', routes);

// app.get("/potdar", async(req,res) =>{

//   res.send("Response  from potdar ");
// })



// Start server
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});


module.exports = app;