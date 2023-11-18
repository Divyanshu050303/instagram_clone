import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widget/custom_button.dart';
import 'package:instagram_clone/common/widget/custom_textfield.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // Animation<double> _animation;
  String image1 = 'assets/instagram1.png';
  String image2 = 'assets/instagram2.png';
  late String currentImageUrl;
  bool isImage1 = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(
            width: mediaQueryData.size.width,
            height: mediaQueryData.size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFE4EBEF),
                Color(0xFFFFE0EF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
                Color(0xFFE9FDFF),
              ],begin: Alignment.topLeft,end: Alignment.bottomRight)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: mediaQueryData.size.height * 0.12,
                      bottom: mediaQueryData.size.height * 0.12),
                  child: Center(
                      child: Image.asset(
                    "assets/instagram1.png",
                    width: mediaQueryData.size.width * 0.3,
                    height: mediaQueryData.size.height * 0.15,
                  )),
                ),
                CustomTextField(
                    hintText: "UserName, Email, Phone Number",
                    controller: nameController),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    hintText: "Password ", controller: nameController),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(mediaQueryData.size.width*0.9,mediaQueryData.size.height*0.08),
                      backgroundColor: const Color(0xFF007AD7)),
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Forgotten Password?", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    // Change the border color here
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Color(0xFF007AD7)),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(Size(mediaQueryData.size.width*0.9,mediaQueryData.size.height*0.07),)
                  ),
                  child: const Text(
                    "Create new account",
                    style: TextStyle(color: Color(0xFF007AD7), fontSize: 20),
                  )
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/meta.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Meta",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
