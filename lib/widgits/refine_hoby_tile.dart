import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class RefineHobyTile extends StatefulWidget {
  final String hoby;
  const RefineHobyTile({super.key, required this.hoby});

  @override
  State<RefineHobyTile> createState() => _RefineHobyTileState();
}

class _RefineHobyTileState extends State<RefineHobyTile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isSelected ? AppConstant.appMainColor : Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: AppConstant.mainTextColor,
            )),
        child: AppText(
          text: widget.hoby,
          color: isSelected ? Colors.white : AppConstant.appMainColor,
        ),
      ),
    );
  }
}
