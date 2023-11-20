import 'package:flutter/material.dart';
import 'package:instagram_clone/features/profile/widget/EditButton.dart';
import 'package:instagram_clone/features/profile/widget/appBar.dart';
import 'package:instagram_clone/features/profile/widget/details.dart';
import 'package:instagram_clone/features/profile/widget/follower.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData =MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:mediaQueryData.size.height*0.04 ,),
            const AppBarProfile(),
            SizedBox(height:mediaQueryData.size.height*0.02 ,),
            const Followers(),
            SizedBox(height:mediaQueryData.size.height*0.02 ,),
            const Details(),
            SizedBox(height:mediaQueryData.size.height*0.02 ,),
            const EditButton()
          ],
        ),
      ),
    );
  }
}
