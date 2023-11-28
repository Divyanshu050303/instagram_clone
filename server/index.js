// Imports 
import express from 'express';
import { connect } from 'mongoose';
import  authRouter from "./routes/auth.js";
import  postRouter from "./routes/post.js";

const PORT=process.env.PORT || 3000
const app= express();
const DB="mongodb+srv://divyanshu:12345@cluster0.wlivs3w.mongodb.net/?retryWrites=true&w=majority"
app.use(express.json());
app.use(authRouter);
app.use(postRouter);
// connection

connect(DB).then(()=>{
    console.log("Connection Successful")
}).catch((e)=>{
    console.log(e);
})
 
app.listen(PORT,()=>{
    console.log(`connected at port ${PORT}`);
});