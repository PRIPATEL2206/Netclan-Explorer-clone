import 'package:flutter/cupertino.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppConstant.mainTextColor,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          AppText(
            text: title,
            fontSize: 20,
            color: AppConstant.mainTextColor,
          )
        ],
      ),
    );
  }
}
