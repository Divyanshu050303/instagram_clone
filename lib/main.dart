import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/common/widget/bottom_bar.dart';
import 'package:instagram_clone/features/authentication/screen/auth_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,

    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

