import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/app_fonts.dart';
import 'package:i_creativez_task1/const/colors.dart';
import 'package:i_creativez_task1/utils/device_info.dart';
import 'package:i_creativez_task1/widgets/app_bar_widget.dart';
import 'package:i_creativez_task1/widgets/custom_button.dart';
import 'package:i_creativez_task1/widgets/text_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
          title: "Test Detail",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenWidth * 0.06,vertical: screenHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: "Math Test",
                fontFamily: FontFamilyPoppins.poppinsSemiBold,
                fontSize: screenWidth * 0.070,
              ),
              SizedBox(height: screenHeight * 0.02,),
              const TextWidget(
                title: "If a car travels 60 miles in 1.5 hours, what is its average speed in miles per hour? Round your answer to the nearest whole number.",
              ),
        
              SizedBox(height: screenWidth * 0.07,),
              Padding(
                padding:  const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const TextWidget(
                        title: "Start : 02:00PM",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      const TextWidget(
                        title: "End : 04:00PM ",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  SizedBox(height: screenHeight * 0.02,),
                  const TextWidget(
                    title: "Test by: Sir Mehboob Shar",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  const TextWidget(
                    title: "Course ID : 405",
                    fontSize: 14,
                  ),
                  SizedBox(height: screenHeight * 0.02,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: CustomButton(
                          title: 'Total Marks : 40',
                          secondaryColor1: secondaryColor,
                          primaryColor1: primaryColor,
                          onTab: (){},
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02,),
                      Expanded(
                        child: CustomButton(
                          title: 'Passing : 30',
                          secondaryColor1: redColor2,
                          primaryColor1: redColor1,
                          onTab: (){},
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: screenHeight * 0.050,),
                  const TextWidget(
                      title: "Total Question : 20",
                      fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: screenHeight * 0.20,),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                        title: "Start Test",
                        secondaryColor1: secondaryColor,
                        primaryColor1: primaryColor,
                        onTab: (){
        
                        }
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
