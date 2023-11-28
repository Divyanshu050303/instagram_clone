import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Provider/user_provider.dart';
import 'package:instagram_clone/constant/errorhandling.dart';
import 'package:instagram_clone/constant/golbalvariable.dart';
import 'package:instagram_clone/constant/utils.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../../../models/post.dart';


class AddPostServices {
  void AddPost({
    required BuildContext context,
    required String name,
    required String description,
    required double like,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      final cloudinary = CloudinaryPublic("drkhacz7u", "sqgoksyv");
      List<String>imageUrls = [];
      for (int i = 0; i < imageUrls.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
            CloudinaryFile.fromFile(images[i].path, folder: name)
        );
        imageUrls.add(res.secureUrl);
      }
      Post post = Post(
          name: name,
          description: description,
          like: like,
          images: imageUrls
      );
      http.Response res = await http.post(
          Uri.parse('$uri/add-post'),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': userProvider.user.token,
          },
          body: post.toJson()
      );

      httpErrorHandle(response: res, context: context, onSuccess: () {
        showSnackBar(context, "Post Added Successfully!");
        Navigator.pop(context);
      });
    }catch(e){
      showSnackBar(context, e.toString());
    }
  }
}