import 'package:flutter/material.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 44,
        ),
        Column(
          children: [
            Text(
              "9",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Posts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ],
        ),
        Column(
          children: [
            Text(
              "93",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Followers",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ],
        ),
        Column(
          children: [
            Text(
              "9",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Following",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }
}
