import 'package:flutter/material.dart';
import 'package:instagram_clone/common/widget/bottom_bar.dart';
import 'package:instagram_clone/features/Home/screen/home_screen.dart';
import 'package:instagram_clone/features/authentication/screen/auth_screen.dart';
import 'package:instagram_clone/features/profile/screen/Profile.dart';
import 'package:instagram_clone/features/search/Screen/Search.dart';

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
      case BottomBar.routeName:
        return MaterialPageRoute(
          settings:routeSettings,
        builder: (_)=>const BottomBar()
        );
      case Search.routeName:
      return MaterialPageRoute(
          settings:routeSettings,
        builder: (_)=>const Search()
      );
      case Profile.routeName:
      return MaterialPageRoute(
          settings:routeSettings,
        builder: (_)=> const Profile()
      );
    default:
      return MaterialPageRoute(settings: routeSettings, builder: (_)=>const Scaffold(
        body: Center(
          child: Text("Screen Does not exits!"),
        ),
      ));
  }
}