import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constans/constants.dart';
import 'package:netclan_explorer/widgits/app_progressbar.dart';
import 'package:netclan_explorer/widgits/app_text.dart';
import 'package:netclan_explorer/widgits/drawer_tile.dart';
import 'package:netclan_explorer/widgits/profile_tile.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: _drawer(),
        appBar: AppBar(
          backgroundColor: AppConstant.appMainColor,
          actions: const [Icon(CupertinoIcons.bell)],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: "Explore",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  AppText(
                    text: "San Francisco , Califonia",
                    color: Colors.white,
                    fontSize: 16,
                  )
                ],
              ),
            ],
          ),
          bottom: const TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "INDIVIDUAL",
                ),
                Tab(
                  text: "PROFESIONAL",
                ),
                Tab(
                  text: "MERCHANT",
                ),
              ]),
        ),
        body: TabBarView(children: [
          _tabBarView(),
          _tabBarView(),
          _tabBarView(),
        ]),
      ),
    );
  }

  Widget _tabBarView() {
    final tileDetail = [
      {
        "name": "Mechael Murphy",
        "address": "San Francisco, within 1 km",
        "hoby": "FriendShip | Coffee | Hangout",
        "dis": "Hi comunity! I am open to new connections. ",
        "is_invited": false,
        "image": "assets/images/p1.jpg"
      },
      {
        "name": "John Doe",
        "address": "San Francisco, within 1 km",
        "hoby": "FriendShip | Coffee | Hangout",
        "dis":
            "Going to Berkley, would love to share a ride with someone like minded.",
        "is_invited": true,
        "image": "assets/images/p2.jpg"
      },
      {
        "name": "Jenifer",
        "address": "San Francisco, within 1 km",
        "hoby": "FriendShip | Coffee | Hangout",
        "dis": "Lorem, ipsum dolor sit amet consectetur ",
        "is_invited": true,
        "image": "assets/images/p3.jpg"
      },
      {
        "name": "Henry Martine",
        "address": "San Francisco, within 1 km",
        "hoby": "Coffee | Hangout | FriendShip  ",
        "dis": "Lorem, ipsum dolor sit amet consectetur adipisicing elit.",
        "is_invited": true,
        "image": "assets/images/p4.jpg"
      },
      {
        "name": "Lucifer",
        "address": "San Francisco, within 1 km",
        "hoby": "Hangout | FriendShip | Coffee ",
        "dis": "Lorem, ipsum dolor sit  adipisicing elit.",
        "is_invited": true,
        "image": "assets/images/p5.jpg"
      },
    ];
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppConstant.mainTextColor,
                      ),
                      hintText: "Search"),
                ),
              ),
            ),
            const Icon(Icons.display_settings_sharp),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        for (int i = 0; i < tileDetail.length; i++)
          ProfileTile(
            name: tileDetail[i]["name"] as String,
            address: tileDetail[i]["address"] as String,
            hobby: tileDetail[i]["hoby"] as String,
            disc: tileDetail[i]["dis"] as String,
            image: tileDetail[i]["image"] as String,
            isInvited: tileDetail[i]["is_invited"] as bool,
          )
      ]),
    );
  }

  Widget _drawer() {
    return Container(
      padding: const EdgeInsets.only(right: 100),
      child: SafeArea(
        child: Material(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 220,
                width: 400,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/drawerbg.jpg"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.person,
                            color: AppConstant.appMainColor,
                            size: 100,
                          ),
                        ),
                        const Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const AppText(
                      text: "OK Pa",
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    const AppText(
                      text: "000GAND00KK030",
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const AppProgressBar(),
                    const AppText(text: "Avaialable"),
                  ],
                ),
              ),
              const DrawerTile(icon: Icons.person, title: "Edit Profile"),
              const DrawerTile(icon: Icons.group, title: "My Network"),
              const DrawerTile(
                  icon: CupertinoIcons.briefcase, title: "Switch to Business"),
              const DrawerTile(icon: Icons.shop, title: "Switch to Merchant"),
              const DrawerTile(icon: Icons.heart_broken_sharp, title: "Dating"),
              const DrawerTile(
                  icon: Icons.filter_vintage_rounded, title: "Matrimony"),
              const DrawerTile(
                  icon: CupertinoIcons.bag_badge_plus, title: "Buy-Sell-Rent"),
              const DrawerTile(icon: CupertinoIcons.bag, title: "Jobs"),
              const DrawerTile(
                  icon: Icons.card_membership, title: "Business Card"),
              const DrawerTile(icon: Icons.tag, title: "Netclean Group"),
              const DrawerTile(icon: Icons.note_add_outlined, title: "Notes"),
              const DrawerTile(icon: Icons.location_on, title: "Live Location"),
            ]),
          ),
        ),
      ),
    );
  }
}
