import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widget/custom_textfield.dart';
import 'package:instagram_clone/features/authentication/services/auth.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        context: context);
  }

  void signInUser() {
    authService.signInUser(
        context: context, email: emailController.text, password: passwordController.text);
  }

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
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.1,
                        bottom: mediaQueryData.size.height * 0.1),
                    child: Center(
                        child: Image.asset(
                          "assets/instagram1.png",
                          width: mediaQueryData.size.width * 0.3,
                          height: mediaQueryData.size.height * 0.15,
                        )),
                  ),
                  if(_auth == Auth.signup)
                    Form(
                        key: _signUpFormKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                hintText: "UserName, Email, Phone Number",
                                controller: emailController),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                hintText: "name", controller: nameController),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                hintText: "Password ",
                                controller: passwordController),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_signUpFormKey.currentState!.validate()) {
                                  signUpUser();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      mediaQueryData.size.width * 0.9,
                                      mediaQueryData.size.height * 0.08),
                                  backgroundColor: const Color(0xFF007AD7)),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _auth = Auth.signin;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    // Change the border color here
                                    side: MaterialStateProperty.all<BorderSide>(
                                      const BorderSide(
                                          color: Color(0xFF007AD7)),
                                    ),
                                    minimumSize: MaterialStateProperty.all<
                                        Size>(
                                      Size(mediaQueryData.size.width * 0.9,
                                          mediaQueryData.size.height * 0.07),
                                    )),
                                child: const Text(
                                  "Log In",
                                  style: TextStyle(
                                      color: Color(0xFF007AD7), fontSize: 20),
                                )),
                          ],
                        )),
                  if(_auth == Auth.signin)
                    Form(
                        key: _signInFormKey,
                        child: Column(
                          children: [
                            CustomTextField(
                                hintText: "UserName, Email, Phone Number",
                                controller: emailController),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextField(
                                hintText: "Password ",
                                controller: passwordController),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                 if(_signInFormKey.currentState!.validate()){
                                   signInUser();
                                 }
                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      mediaQueryData.size.width * 0.9,
                                      mediaQueryData.size.height * 0.08),
                                  backgroundColor: const Color(0xFF007AD7)),
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Forgotten Password?",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: mediaQueryData.size.height * 0.1269,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _auth = Auth.signup;
                                  });
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                    // Change the border color here
                                    side: MaterialStateProperty.all<BorderSide>(
                                      const BorderSide(
                                          color: Color(0xFF007AD7)),
                                    ),
                                    minimumSize: MaterialStateProperty.all<
                                        Size>(
                                      Size(mediaQueryData.size.width * 0.9,
                                          mediaQueryData.size.height * 0.07),
                                    )),
                                child: const Text(
                                  "Create new account",
                                  style: TextStyle(
                                      color: Color(0xFF007AD7), fontSize: 20),
                                )),
                          ],
                        )),

                  const SizedBox(
                    height: 10,
                  ),
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
          ),
        ));
  }
}
