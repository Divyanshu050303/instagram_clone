import 'package:flutter/material.dart';

class HighLight extends StatefulWidget {
  const HighLight({super.key});

  @override
  State<HighLight> createState() => _HighLightState();
}

class _HighLightState extends State<HighLight> {
  List<Map<String, String>> highList = [
    {"name": "Virat Kohli", "Image": "assets/virat.png"},
    {"name": "new", "Image": "assets/add.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Column(children: [
      SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height * 0.09,
        child: ListView.builder(
            itemCount: highList.length,
            padding: const EdgeInsets.only(left: 10, right: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child: Container(
                      width: mediaQueryData.size.width * 0.18,
                      height: mediaQueryData.size.height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2.0, color: Colors.black)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          highList[index]["Image"]!,
                          fit: BoxFit.fill,
                          width: 50,
                          height: 50,
                        ),
                      )));
            }),
      ), SizedBox(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height * 0.05,
        child: ListView.builder(
            itemCount: highList.length,
            padding: const EdgeInsets.only(left: 10, right: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child: SizedBox(
                      width: mediaQueryData.size.width * 0.18,
                      height: mediaQueryData.size.height * 0.1,
                        child:  Center(child: Text(highList[index]['name']!))));
            }),
      ),
    ]);
  }
}
