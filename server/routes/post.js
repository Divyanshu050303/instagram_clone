import express from 'express';
import Post from '../models/post.js';
const postRouter=express.Router();


// Add Post

postRouter.post("/add-post",async(req, res)=>{

    try{
        const{name, description, images, like}=req.body;
        let post=new Post({
            name,
            description, 
            images,
            like
        });
        post=await post.save();
        res.json(post);
    }
    catch(err){
        res.status(500).json({error: err.message});
    }
});


export default postRouter;