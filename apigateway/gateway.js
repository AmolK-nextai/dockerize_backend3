const express = require('express');
const { createProxyMiddleware } = require('http-proxy-middleware');

const app = express();
const PORT = process.env.PORT || 3000;



const routes={
    "/potdar":"http://localhost:4000",
    "/dynamic":"http://localhost:5000",
    "/nexaitech": "http://localhost:6000"
}

for( const route in routes){
    const target = routes[route];
    app.use(route,createProxyMiddleware({target}));
}






// Start the API Gateway
app.listen(PORT, () => {
  console.log(`API Gateway is running on port ${PORT}`);
});
