import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_progressbar.dart';
import 'package:netclan_explorer/widgits/app_text.dart';

class ProfileTile extends StatelessWidget {
  final String name;
  final String address;
  final String hobby;
  final String disc;
  final String image;
  final bool isInvited;

  const ProfileTile(
      {super.key,
      required this.name,
      required this.address,
      required this.hobby,
      required this.disc,
      required this.image,
      required this.isInvited});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.antiAlias,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10).copyWith(left: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 1,
                  color: Color.fromARGB(71, 0, 0, 0),
                  spreadRadius: .1,
                  offset: Offset(1, 1),
                )
              ]),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppText(
                  fontSize: 17,
                  text: isInvited ? "PENDING" : "+INVITE",
                  color: isInvited
                      ? AppConstant.subTextColor
                      : AppConstant.mainTextColor,
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: name,
                      color: AppConstant.mainTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: address,
                      color: AppConstant.subTextColor,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const AppProgressBar()
                  ],
                )
              ],
            ),
            AppText(
              text: hobby,
              fontSize: 19,
              color: AppConstant.mainTextColor,
            ),
            AppText(
              text: disc,
              maxLine: 2,
              color: AppConstant.subTextColor,
            ),
          ]),
        ),
        Positioned(
            top: 35,
            left: 20,
            child: Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.white,
                    spreadRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ))
      ],
    );
  }
}
