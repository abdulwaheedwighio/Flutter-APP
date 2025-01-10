import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/colors.dart';
import 'package:i_creativez_task1/const/image_string.dart';
import 'package:i_creativez_task1/utils/device_info.dart';
import 'package:i_creativez_task1/widgets/leaderboard_widget.dart';
import 'package:i_creativez_task1/widgets/text_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            primaryColor,
                            secondaryColor
                          ],
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: screenHeight * 0.04,right: screenWidth * 0.030),
                    child: const StackItem(
                      userImage: AppImages.userImage,
                      positionBgColor: Colors.yellow,
                      userPosition: "1",
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: screenWidth * 0.48,top: screenHeight * 0.16),
                    child: const StackItem(
                      userImage: AppImages.userImage1,
                      positionBgColor: Colors.green,
                      userPosition: "2",
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: screenWidth * 0.45,top: screenHeight * 0.16) ,
                    child: const StackItem(
                      userImage: AppImages.userImage2,
                      positionBgColor: Colors.red,
                      userPosition: "3",
                    ),
                  ),

                ],
              ),
            ),
              TabBar(
               indicatorColor: primaryColor,
                labelColor: primaryColor,

                tabs: const [
                  Tab(
                    text: "Running",

                  ),
                  Tab(
                    text: "All over",
                  )
                ],
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        
                      ),
                      child: ListView(
                        children: [
                          ListTile(
                            title: const TextWidget(title: "Abdul Waheed"),
                            subtitle: const TextWidget(title: "Score : 40"),
                            leading: CircleAvatar(
                              radius: screenWidth * 0.08,
                            backgroundImage: const AssetImage(AppImages.userImage),
                            ),
                          ),

                          ListTile(
                            title: const TextWidget(title: "Abdul Raheem"),
                            subtitle: const TextWidget(title: "Score : 35"),
                            leading: CircleAvatar(
                              radius: screenWidth * 0.08,
                              backgroundImage: const AssetImage(AppImages.userImage1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                       
                      ),
                      child: const  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(title: "Over All"),
                          SizedBox(height: 20),
                          Text("This is the over all tab content."),
                        ],
                      ),
                    ),
                  ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

