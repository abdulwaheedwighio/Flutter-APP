import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/account_screen.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/leaderboard_screen.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/courses_screen.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/home_screens.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/question_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {



  late PageController pageController;
  int current_screen = 0;

  List<Widget> screens = [
    const DashboardScreen(),
    const LeaderboardScreen(),
    const AccountScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(
      initialPage: current_screen,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: current_screen,
        indicatorColor: Colors.transparent,
        height: kBottomNavigationBarHeight,
        onDestinationSelected: (value){
          setState(() {
            current_screen = value;
          });
          pageController.jumpToPage(current_screen);
        },
        destinations: const  [
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.home,color: Colors.blue,),
            icon: Icon(CupertinoIcons.home),
            label: "Home",

          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.group,color: Colors.blue,),
            icon: Icon(CupertinoIcons.group),
            label: "Leaderboard",
          ),
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.profile_circled,color: Colors.blue,),
            icon: Icon(CupertinoIcons.profile_circled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
