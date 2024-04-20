import 'package:flutter/material.dart';
import 'package:flutter_brand_palettes/flutter_brand_palettes.dart';

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
      width:  mediaQueryData.size.height,
      height: mediaQueryData.size.height*0.15,

      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemCount: story.length,
          itemBuilder:(context, index){
        return   Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 7),
          child: Column(
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: Colors.orange,
                child: const CircleAvatar(
                  radius: 39,
                ),
              ),
              const SizedBox(height: 5,),
              const Text("Name"),
            ],
          ),
        );
      }),
    );
  }
}
