import 'package:flutter/material.dart';
import 'package:instagram_clone/features/Home/screen/home_screen.dart';
import 'package:instagram_clone/features/authentication/screen/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings:routeSettings,
        builder: (_)=>const AuthScreen()
      );
      case HomeScreen.routeName:
      return MaterialPageRoute(
          settings:routeSettings,
        builder: (_)=>HomeScreen()
      );
    default:
      return MaterialPageRoute(settings: routeSettings, builder: (_)=>const Scaffold(
        body: Center(
          child: Text("Screen Does not exits!"),
        ),
      ));
  }
}