

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/Provider/user_provider.dart';
import 'package:instagram_clone/common/widget/bottom_bar.dart';
import 'package:instagram_clone/features/authentication/screen/auth_screen.dart';
import 'package:instagram_clone/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (context)=>UserProvider()),
      ],child:const MyApp() ,)
      );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Make status bar translucent
    systemNavigationBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
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
      onGenerateRoute: (setting)=>generateRoute(setting),
      // home: Provider.of<UserProvider>(context).user.token.isNotEmpty
      //     ? const BottomBar()
      //     : const AuthScreen(),
      home:const BottomBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
