import 'package:flutter/material.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class AppDropDown extends StatefulWidget {
  const AppDropDown({super.key});

  @override
  State<AppDropDown> createState() => _AppDropDownState();
}

class _AppDropDownState extends State<AppDropDown> {
  final avaliblityItem = [
    "Available | Hey Let Us Connet",
    "Away | Stay Discreet And Watch",
    "Busy | Do Not Disturb | Will Catch Up Later",
    "SOS | Emergency! Need Assistance! HELP"
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      elevation: 0,
      isExpanded: true,
      value: selectedItem,
      items: [
        for (int i = 0; i < avaliblityItem.length; i++)
          DropdownMenuItem(
              onTap: () {
                setState(() {
                  selectedItem = i;
                });
              },
              value: i,
              child: AppText(
                text: avaliblityItem[i],
              )),
      ],
      onChanged: (value) {},
    );
  }
}
