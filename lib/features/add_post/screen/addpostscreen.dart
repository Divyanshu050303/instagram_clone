import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constant/utils.dart';
import 'package:instagram_clone/features/add_post/services/add_post_servises.dart';

import '../../../common/widget/custom_textfield.dart';


class AddPost extends StatefulWidget {
  static const String routeName = '/add-post';

  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final TextEditingController descriptionController = TextEditingController();
  List<File> images = [];
  final _addProductFormKey = GlobalKey<FormState>();
  AddPostServices addPostServices = AddPostServices();

  @override
  void dispose() {
    super.dispose();
    descriptionController.dispose();
  }

  void posting() {
    print("button tapped");
    if (_addProductFormKey.currentState!.validate() && images.isNotEmpty) {
      addPostServices.AddPost(context: context,
          name: "Divyanshu",
          description: descriptionController.text,
          like: 0,
          images: images);
    }
  }

  void selectImages() async {
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: const Text(
            'Add Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _addProductFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                SizedBox(height: mediaQueryData.size.height * 0.2),
                images.isNotEmpty
                    ? CarouselSlider(
                  items: images.map(
                        (i) {
                      return Builder(
                        builder: (BuildContext context) =>
                            Image.file(
                              i,
                              fit: BoxFit.cover,
                              height: 200,
                            ),
                      );
                    },
                  ).toList(),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 200,
                  ),
                )
                    : GestureDetector(
                  onTap: selectImages,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [10, 4],
                    strokeCap: StrokeCap.round,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.folder_open,
                            size: 40,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Select Images',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: descriptionController,
                  hintText: 'Description',
                ),
                const SizedBox(height: 10),
                ElevatedButton(onPressed: posting, child: const Text("Add Post"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
