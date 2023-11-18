import 'package:flutter/material.dart';
import 'package:instagram_clone/features/Home/widget/yourStory.dart';

class StorySection extends StatefulWidget {
  const StorySection({super.key});

  @override
  State<StorySection> createState() => _StorySectionState();
}

class _StorySectionState extends State<StorySection> {
  List<Map<String, String>> story=[{},{},{},{}];
  @override
  Widget build(BuildContext context) {
  MediaQueryData mediaQueryData =MediaQuery.of(context);
    return SizedBox(
      width: mediaQueryData.size.width,
      height: mediaQueryData.size.height*0.15,

      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemCount: story.length,
          itemBuilder:(context, index){
        return   Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              Container(
                width:mediaQueryData.size.width*0.22,
                height:mediaQueryData.size.height*0.1,
                decoration: BoxDecoration(
                color: Colors.black,
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  radius: 42,
                ),
              ),
              SizedBox(height: 5,),
              Text("Name"),
            ],
          ),
        );
      }),
    );
  }
}
