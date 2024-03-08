// middleware/prismaMiddleware.js
const { PrismaClient: PrismaClient1 } = require('../prisma/prismaClient1');
const { PrismaClient: PrismaClient2 } = require('../prisma/prismaClient2');

// function choosePrismaClient(req, res, next) {
  // Assuming the email is in the request headers, you can modify this based on your actual scenario
  // const username = req.headers['username'];

  // Choose Prisma client based on the email
  // if (username && username.endsWith('vijay@gmail.com')) {
  //   console.log("client1 activated");
    req.prisma = new PrismaClient1();
  // } else if (username && username.endsWith('kulkarni@gmail.com')) {
  //   console.log("client2 activated");
  //   req.prisma = new PrismaClient2();
  // } else {
  //   // Default to a specific client or handle the case accordingly
  //   // req.prisma = new PrismaClient1();
  //   console.log("We have no defined user");
  // }

  // next();
// }

module.exports = choosePrismaClient;
