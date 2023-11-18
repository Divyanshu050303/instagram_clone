import 'package:flutter/material.dart';
import 'package:instagram_clone/features/Home/widget/Post.dart';
import 'package:instagram_clone/features/Home/widget/appBar.dart';
import 'package:instagram_clone/features/Home/widget/storySection.dart';
import 'package:instagram_clone/features/Home/widget/yourStory.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='/home-screen';
    HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
              App_Bar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  YourStory(),
                  StorySection(),
                  SizedBox(width: 30,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Post(),
            SizedBox(height: 10,),
            Post(),
          ],
        ),
      ),
    );
  }
}
