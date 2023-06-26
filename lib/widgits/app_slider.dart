import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double labal = 50;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Slider(
            activeColor: AppConstant.progressBarColor,
            value: labal,
            divisions: 100,
            label: labal.round().toString(),
            onChanged: (value) {
              setState(() {
                labal = value;
              });
            },
            min: 0,
            max: 100,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppText(
              text: "0 km",
              fontSize: 16,
            ),
            AppText(
              text: "100 km",
              fontSize: 16,
            )
          ],
        )
      ],
    );
  }
}
