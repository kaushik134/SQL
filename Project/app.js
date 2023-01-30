const express = require("express")
const app = express()

const mysql = require("mysql")
const cors = require("cors")
require("dotenv/config")

app.use(cors())
app.options("*",cors())
app.use(express.json())
app.use(express.urlencoded())

const connection = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"admin@123",
    database:"skillqode",
    port:3309
})
connection.connect(function(error){
    if(error){
        console.log(error);
    }else{
        console.log("connected");
    }
})

app.listen(3030,()=>{
    console.log(`server ${3030}`);
})