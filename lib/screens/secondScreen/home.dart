import 'package:flutter/material.dart';
import 'package:quiz_flutter/screens/secondScreen/tabBar.dart';
import 'package:quiz_flutter/utils/app_assets.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: 35,
                child: Image.asset(
                  width: 70,
                  height: 70,
                  AppAssets.Ellipse,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Hello, Jade",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 17),
                    ),
                    Text(
                      "Ready to workout?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: badges.Badge(
                  badgeContent: Text(''),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(width: MediaQuery.of(context).size.width*0.15,),

              Column(
                children: [
                  Row(
                    children: [
                      Tab(icon: new Image.asset(AppAssets.heart)),
                      Text(
                        "Heart Rate ",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Text(
                    "81 BPM",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),

              Container(
                width: 4, // Width of the vertical divider
                height: 60, // Height of the vertical divider
                color: Color(0xffD9D9D9), // Color of the vertical divider
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Tab(icon: new Image.asset(AppAssets.list)),
                      Text(
                        "To-do ",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Text(
                    "32,5 %",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),

              Container(
                width: 4, // Width of the vertical divider
                height: 60, // Height of the vertical divider
                color: Color(0xffD9D9D9), // Color of the vertical divider
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Tab(icon: new Image.asset(AppAssets.fire)),
                      Text(
                        "Calo ",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Text(
                    "1000 Cal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "Workout Programs",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          MyTabBar(),
        ],
      ),
    );
  }
}
