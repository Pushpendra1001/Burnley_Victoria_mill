import 'package:burnley_victoria_mill/Pages/CollegeExplorePage.dart';
import 'package:burnley_victoria_mill/Pages/HomePage.dart';
import 'package:burnley_victoria_mill/Pages/VideoPlayerScreen.dart';
import 'package:burnley_victoria_mill/Common/color.dart';
import 'package:burnley_victoria_mill/Pages/view360page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ExplorePage(),
    View360Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Container(
          color: Colors.transparent.withOpacity(0.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35), color: color1),
                child: GNav(
                    gap: 8,
                    activeColor: Colors.white,
                    tabBackgroundColor: color1,
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        iconColor: Colors.teal,
                        text: "Home",
                      ),
                      GButton(
                        icon: CupertinoIcons.eye,
                        iconColor: Colors.teal,
                        text: "Explore",
                      ),
                      GButton(
                        icon: CupertinoIcons.globe,
                        iconColor: Colors.teal,
                        text: "360°",
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    })),
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
