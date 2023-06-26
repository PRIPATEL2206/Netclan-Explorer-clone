import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class RefineTextEditing extends StatefulWidget {
  const RefineTextEditing({super.key});

  @override
  State<RefineTextEditing> createState() => _RefineTextEditingState();
}

class _RefineTextEditingState extends State<RefineTextEditing> {
  int words = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLines: 2,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 1, horizontal: 7),
              focusColor: AppConstant.mainTextColor,
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          onChanged: (value) {
            setState(() {
              words = value.length;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppText(
              text: "$words/250",
              color: AppConstant.mainTextColor,
            ),
          ],
        )
      ],
    );
  }
}
