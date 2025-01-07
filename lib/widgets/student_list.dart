import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/app_fonts.dart';
import 'package:i_creativez_task1/utils/device_info.dart';
import 'package:i_creativez_task1/widgets/text_widget.dart';

class StudentViewList extends StatelessWidget {
  const StudentViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          title: "Abdul Waheed wighio",
          fontSize: screenWidth * 0.037,
          textColor: Colors.black,
          fontFamily: FontFamilyPoppins.poppinsSemiBold,
        ),
        SizedBox(height: screenHeight * 0.003,),
        const TextWidget(
          title: "Bechlor OF IT",
          fontSize: 15,
          textColor: Colors.black,

        ),
      ],
    );
  }
}
