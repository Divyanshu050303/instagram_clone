import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("divyanhsusingh1286", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),),
        SizedBox(width: 30,),
        IconButton(onPressed: (){}, icon:Icon(Icons.add_box_outlined, color: Colors.black, size: 30,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.dehaze_rounded, color: Colors.black, size: 30,))
      ],
    );
  }
}
