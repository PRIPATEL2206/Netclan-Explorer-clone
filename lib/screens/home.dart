import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/screens/explore_screen.dart';
import 'package:netclan_explorer/screens/refine_screen.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentScreen = 0;
  final screens = const [
    RefineScreen(),
    ExploreScreen(),
    Center(child: AppText(text: "Network")),
    Center(child: AppText(text: "Chat")),
    Center(child: AppText(text: "Contect")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currentScreen,
          onTap: (value) => setState(() {
                currentScreen = value;
              }),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.text_badge_checkmark,
                  color: AppConstant.mainTextColor,
                ),
                label: "Refine"),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.eye_fill,
                  color: AppConstant.mainTextColor),
              label: "Explore",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.workspaces_outline,
                    color: AppConstant.mainTextColor),
                label: "Network"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text,
                    color: AppConstant.mainTextColor),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_contact_calendar_outlined,
                    color: AppConstant.mainTextColor),
                label: "Contect"),
          ]),
    );
  }
}
