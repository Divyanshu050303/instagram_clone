import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<String> details=["divyanshu singh", "5 march 2003"];
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData =MediaQuery.of(context);
    return SizedBox(
      height: mediaQueryData.size.height*0.06,
      width: mediaQueryData.size.width,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: details.length,
          itemBuilder: (context, index){
        return Text(details[index], style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18
        ),);
      }),
    );
  }
}
