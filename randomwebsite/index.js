const express= require("express");
const app = express();


const PORT = 6000


app.get("/random",(req,res) =>{

    res.send(" yes everything will work  using this way");
})

app.post('/',(req,res) =>{


    res.send("welcome we were wait for you");
})



app.listen(PORT, () => {
    console.log(`Random website is running on   ${PORT}`);
  });
  


