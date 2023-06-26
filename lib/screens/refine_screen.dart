import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_dropdown.dart';
import 'package:netclan_explorer/widgits/app_slider.dart';
import 'package:netclan_explorer/widgits/app_text.dart';
import 'package:netclan_explorer/widgits/refine_hoby_tile.dart';
import 'package:netclan_explorer/widgits/refine_text_controler.dart';

class RefineScreen extends StatelessWidget {
  const RefineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: const AppText(text: "Refine"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          const AppText(
            text: "Select Your Availability",
            color: AppConstant.mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const AppDropDown(),
          ),
          const SizedBox(
            height: 10,
          ),
          const AppText(
            text: "Add Your Status",
            color: AppConstant.mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          const SizedBox(
            height: 3,
          ),
          const RefineTextEditing(),
          const AppText(
            text: "Select Hyper local Distance",
            color: AppConstant.mainTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          const SizedBox(
            height: 40,
          ),
          const AppSlider(),
          const SizedBox(
            height: 10,
          ),
          const AppText(
            text: "Select Purpose",
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppConstant.mainTextColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              RefineHobyTile(hoby: "Coffee"),
              RefineHobyTile(hoby: "Business"),
              RefineHobyTile(hoby: "Hobbies"),
              RefineHobyTile(hoby: "Friendship"),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              RefineHobyTile(hoby: "Movies"),
              RefineHobyTile(hoby: "Dinning"),
              RefineHobyTile(hoby: "Dating"),
              RefineHobyTile(hoby: "Matrimony"),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            AppConstant.appMainColor)),
                    onPressed: () {},
                    child: const AppText(
                      text: "Save & Explore",
                      color: Colors.white,
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
