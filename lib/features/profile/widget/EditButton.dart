import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        Expanded(
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Edit profile"))),
        const SizedBox(width: 8,),
        Expanded(
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Share profile", style: TextStyle(fontSize: 13.9),))),
        const SizedBox(width: 8,),
        ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.person_add_rounded,
              size: 28,
              color: Colors.black,
            ))
      ],
    );
  }
}
