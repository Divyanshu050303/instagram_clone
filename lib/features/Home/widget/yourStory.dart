import 'package:flutter/material.dart';

class YourStory extends StatefulWidget {
  const YourStory({super.key});

  @override
  State<YourStory> createState() => _YourStoryState();
}

class _YourStoryState extends State<YourStory> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 41,
            ),
            SizedBox(
              height: 5,
            ),
            Text("Name")
          ],
        ),
        Positioned(
          top: 55,
            left: 55,
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
        ))
      ],
    );
  }
}
