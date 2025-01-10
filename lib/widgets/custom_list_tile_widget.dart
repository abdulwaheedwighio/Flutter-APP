import 'package:flutter/material.dart';
import 'package:i_creativez_task1/const/image_string.dart';
import 'package:i_creativez_task1/utils/device_info.dart';
import 'package:i_creativez_task1/widgets/text_widget.dart';

class CustomListTileWidget extends StatelessWidget {


  const CustomListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const TextWidget(title: "Abdul Waheed"),
      subtitle: const TextWidget(title: "Score : 40"),
      leading: CircleAvatar(
        radius: screenWidth * 0.08,
        backgroundImage: const AssetImage(AppImages.userImage),
      ),
    );
  }
}
