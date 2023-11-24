import express from 'express';
const authRouter=express.Router();
import bcryptjs from "bcryptjs";
import jwt from 'jsonwebtoken';
import User from "../models/user.js";
// import  auth from "../middlewares/auth.js";


// Sign up users

authRouter.post("/api/signup",async(req, res) => {
    try{
        const {name,email, password}=req.body;
        const existingUser=await User.findOne({email});

        if(existingUser){
            return res.statusCode(400).json({msg:"User with same id already exists"});
        }
        const HashedPassWord=await bcryptjs.hash(password,8);
        let user=new User({email, password:HashedPassWord, name});
        user=await user.save();
        res.json(user);
    }
    catch(e){
        res.statusCode(500).json({error:e.message});
    }
});

// Sign in users

authRouter.post("/api/signin", async (req, res) => {
    try{
        const {email, password} = req.body;
        const user = await User.findOne({ email});
        if(!user)
            return res.status(400).json({msg:"User with this does not exist"});

        const isMatch= await bcryptjs.compare(password, user.password);

        if(!isMatch)
            return res.status(400).json({msg:"Password mismatch"});

        const token=jwt.sign({id:user._id}, "passwordKey");

        res.json({token:token, ...user._doc});

    }
    catch(err) {
        res.status(500).json({error:err.message});
    }
});

authRouter.post("/tokerIsWalid", async(req, res) =>{
try{
    const token=req.header("x-auth-token");

    if(!token)
        return res.json(false);
    const verified=jwt.verify(token, "passwordKey");

    if(!verified)
        return res.json(false);
    const user=await User.findOneId(verified.id);
    if(!user) return res.json(false);

    res.json(true);
}
catch(err) {
    res.status(500).json({error: err.message});

}
});

// get user data

authRouter.get("/", async (req, res) => {
    const user=await User.findById(req.user);
    res.json({...user._doc, token:req.token});

})
 


 export default  authRouter;