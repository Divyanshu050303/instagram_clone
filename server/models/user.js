import mongoose from 'mongoose';


const userSchema=mongoose.Schema({
    name:{
        required: true,
        type: 'string',
        trim:true,
    },
    email:{
        required: true,
        type: 'string',
        trum:true,
        validate:{
            validator: (value) => {
            const re= /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            return value.match(re);
            },
            message:"Please enter a valid email address",
        }
    },
    password:{
        required:true,
        type:String,
    },
});

const User=mongoose.model("User", userSchema);
export default User;