import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';

class AppProgressBar extends StatelessWidget {
  const AppProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 10,
          width: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 173, 181, 187),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 10,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppConstant.mainTextColor,
          ),
        ),
      ],
    );
  }
}
