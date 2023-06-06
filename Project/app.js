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

app.post("/",(req,res)=>{
    let {name,email,position} = req.body
    let errors = false

    if(name.length===0 || email.length===0 || position.length===0){
        errors=true
        res.json({error:"please enter name , email , position"})
    }
    if(!errors){
        let form_data = {
            name:name,
            email:email,
            position:position
        }
        connection.query("INSERT INTO user SET ?",form_data,(err,result)=>{
            if(err) throw err
            else{
                res.send(result)
            }
        })  
    }
})

app.get("/",(req,res)=>{
    connection.query("select * from user",function(err,result){
        if(err) throw err
        else{
            res.send(result)
        }
    })
})

app.delete("/:id",(req,res)=>{
    let id = req.params.id
    var sql = "delete from user where id = " +id
    console.log(sql);
    connection.query(sql,(err,result)=>{
        if(err) throw err
        else{
            res.send(result)
        }
    })
})

app.put("/",(req,res)=>{
    let id = req.params.id
    let {name,email,position} = req.body
    let errors = false

    if(name.length===0 || email.length===0 || position.length===0){
        errors=true
        res.json({error:"please enter name , email , position"})
    }
    if(!errors){
        let form_data = {
            name:name,
            email:email,
            position:position
        }
        connection.query("update user SET ? where id = "+id,form_data,(err,result)=>{
            if(err) throw err
            else{
                res.send(result)
            }
        })  
    }
})

app.listen(3030,()=>{
    console.log(`server ${3030}`);
})