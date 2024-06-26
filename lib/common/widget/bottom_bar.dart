import 'package:flutter/material.dart';
import 'package:instagram_clone/features/Home/screen/home_screen.dart';
import 'package:instagram_clone/features/profile/screen/Profile.dart';
import 'package:instagram_clone/features/reel/screen/reel.dart';import 'package:instagram_clone/features/search/Screen/Search.dart';

import '../../features/add_post/screen/addpostscreen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarBorderWidth = 5;
  final double bottomBarWidth = 0;
  List<Widget> pages = [
      HomeScreen(),
    const Search(),
    const AddPost(),
    const Reel(),
    const Profile()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    offset: Offset(1, 1),
                    color: _page == 0 ? Colors.black : Colors.transparent,
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    offset: Offset(1, 1),
                    color: _page == 1 ? Colors.black : Colors.transparent,
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    offset: Offset(1, 1),
                    color: _page == 2 ? Colors.black : Colors.transparent,
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    offset: Offset(1, 1),
                    color: _page == 3 ? Colors.black : Colors.transparent,
                  )
                ],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
                shadows: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    offset: Offset(1, 1),
                    color: _page == 4 ? Colors.black : Colors.transparent,
                  )
                ],
              ),
              label: ""),
        ],
      ),
    );
  }
}
