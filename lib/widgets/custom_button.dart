import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/colors.dart';
import 'package:i_creativez_task1/utils/device_info.dart';
import 'package:i_creativez_task1/widgets/text_widget.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final Color secondaryColor1,primaryColor1;
  final VoidCallback onTab;


  const CustomButton({
    super.key,
    required this.title,
    required this.secondaryColor1,
    required this.primaryColor1,
    required this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: screenWidth * 0.40,
        height: screenHeight * 0.060,
        decoration:   BoxDecoration(
          gradient: LinearGradient(
              colors: [
                secondaryColor1,
                primaryColor1,
              ],
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
            child: TextWidget(
                title: title,
                textColor: Colors.white,
            ),
        ),
      ),
    );
  }
}
