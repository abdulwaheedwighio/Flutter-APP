import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/app_fonts.dart';
import 'package:i_creativez_task1/screens/bottom_nav_bar_screens/leaderboard_screen.dart';
import 'package:i_creativez_task1/utils/device_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student List',
      theme: ThemeData(
        fontFamily: FontFamilyPoppins.poppinsRegular,
      ),
      home: const LeaderboardScreen(),
    );
  }
}
