import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:homeworkk/homePage/home.dart';
import 'package:homeworkk/homePage/profile.dart';
import 'package:homeworkk/homePage/settings.dart';
import 'package:homeworkk/login/signup/fpage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    Profile(),
    Home(),
    Settings(),
  ];
  int currentIndex = 1;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: currentIndex == 1
            ? Colors.blue.shade600
            : currentIndex == 0
                ? Colors.yellow.shade700
                : Colors.red.shade600,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: GNav(
              activeColor: currentIndex == 1
                  ? Colors.blue.shade600
                  : currentIndex == 0
                      ? Colors.yellow.shade700
                      : Colors.red.shade600,
              tabBackgroundColor: Colors.white,
              gap: 8,
              textStyle: TextStyle(
                fontFamily: 'Nexa',
                fontWeight: FontWeight.w700,
                color: currentIndex == 1
                    ? Colors.blue.shade600
                    : currentIndex == 0
                        ? Colors.yellow.shade700
                        : Colors.red.shade600,
              ),
              color: Colors.white,
              backgroundColor: currentIndex == 1
                  ? Colors.blue.shade600
                  : currentIndex == 0
                      ? Colors.yellow.shade700
                      : Colors.red.shade600,
              padding: EdgeInsets.all(7),
              iconSize: 30,
              selectedIndex: currentIndex,
              onTabChange: (currentIndex) {
                onTap(currentIndex);
              },
              tabs: [
                GButton(
                  icon: CupertinoIcons.person,
                  text: "Profile",
                ),
                GButton(
                  icon: CupertinoIcons.square_grid_2x2,
                  text: "Home",
                ),
                GButton(
                  icon: CupertinoIcons.ellipsis_circle,
                  text: "Settings",
                ),
              ]),
        ),
      ),
      body: pages[currentIndex],
    );
  }
}
