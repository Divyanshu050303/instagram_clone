import { Router } from 'express';
const authRouter=Router();
const bcryptjs = require("bcryptjs");
const jwt=require('jsonwebtoken');

// Sign up users

authRouter.post('/user/signup',async(res, req) => {
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