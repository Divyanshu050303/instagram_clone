import 'package:flutter/material.dart';

enum Personal { photo, tagging, reel }

class PersonalPhoto extends StatefulWidget {
  const PersonalPhoto({super.key});

  @override
  State<PersonalPhoto> createState() => _PersonalPhotoState();
}

class _PersonalPhotoState extends State<PersonalPhoto> {
  Personal type = Personal.photo;
  bool enableColorPhoto = true;
  bool enableColorReel = false;
  bool enableColorTagging = false;
  final _photo = GlobalKey<FormState>();
  final _tagging = GlobalKey<FormState>();
  final _reel = GlobalKey<FormState>();
  List<int> arr=[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      width: mediaQueryData.size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    type = Personal.photo;
                    enableColorPhoto = true;
                    enableColorReel = false;
                    enableColorTagging = false;
                  });
                },
                child: Icon(Icons.grid_on_outlined,
                    size: 28,
                    color: enableColorPhoto ? Colors.black : Colors.grey),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    type = Personal.reel;
                    enableColorPhoto = false;
                    enableColorReel = true;
                    enableColorTagging = false;
                  });
                },
                child: Icon(
                  Icons.movie_outlined,
                  size: 28,
                  color: enableColorReel ? Colors.black : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    type = Personal.tagging;
                    enableColorPhoto = false;
                    enableColorReel = false;
                    enableColorTagging = true;
                  });
                },
                child: Icon(
                  Icons.perm_contact_calendar_outlined,
                  size: 28,
                  color: enableColorTagging ? Colors.black : Colors.grey,
                ),
              )
            ],
          ),
          if (type == Personal.photo)
            Form(
              key: _photo,
                child: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height*0.3,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: arr.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: mediaQueryData.size.width*0.2,
                            height: mediaQueryData.size.height*0.15,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              border: Border.all(width: 2, color: Colors.black)
                            ),
                          ),
                        );
                      }),
                )),
          if (type == Personal.reel)
            Form(
              key: _photo,
                child: SizedBox(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height*0.3,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: arr.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         
                          crossAxisCount: 3),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(

                            width: mediaQueryData.size.width*0.2,
                            height: mediaQueryData.size.height*0.15,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              border: Border.all(width: 2, color: Colors.black)
                            ),
                          ),
                        );
                      }),
                )),
          if (type == Personal.tagging)
            Form(
              key: _photo,
                child: SizedBox(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height*0.3,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: arr.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: mediaQueryData.size.width*0.2,
                            height: mediaQueryData.size.height*0.15,
                            decoration: BoxDecoration(
                            color: Colors.white,
                              border: Border.all(width: 2, color: Colors.black)
                            ),
                          ),
                        );
                      }),
                ))
        ],
      ),
    );
  }
}
