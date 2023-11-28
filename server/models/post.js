import mongoose from 'mongoose';

const postSchema=mongoose.Schema({
    name: {
      type: String,
      required: true,
      trim: true,
    },
    description: {
      type: String,
      required: true,
      trim: true,
    },
    images: [
      {
        type: String,
        required: true,
      },
    ],
    like: {
      type: Number,
      required: true,
    } 
  });
const Post=mongoose.model("Product", postSchema);

export default {Post, postSchema};