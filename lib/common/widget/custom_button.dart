import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    bool isHover=false;
    return DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient:   LinearGradient(colors: isHover ?  [Colors.white, Colors.white]:[
            Colors.orange,
            Colors.pink,
            Colors.purple,
            Colors.blue,
            Colors.red
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: ElevatedButton(
          onPressed: () {
          print("tapped");
          },
          style: ElevatedButton.styleFrom(
            minimumSize:Size(150, 50),
            backgroundColor: Colors.transparent,
          ),
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.white, fontSize: 23),
          )),
    );
  }
}
