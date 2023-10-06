import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/calender.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';

import 'package:quiz_flutter/screens/thirdScreen/chatTab.dart';
import 'package:quiz_flutter/screens/thirdScreen/main_tab.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class News extends StatefulWidget {
  static String routeName ="News";

  @override
  State<News> createState() => _WorkAppState();
}

class _WorkAppState extends State<News> {
  List<String> labels = [".", "", "", ""];
  int currentTabIndex = 0;
  String pointForSelected ="";
  List<Widget>tabs =[
    CalendarTab(),
    MainTab(),
    ChatTab(),
  ];
  @override
  Widget build(BuildContext context) {
    CarouselProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Prevents items from shifting

          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.black,
          selectedFontSize:32 ,
          unselectedFontSize: 32,
          currentIndex:currentTabIndex ,
          selectedIconTheme:IconThemeData(

          ) ,

          onTap: (index){
            currentTabIndex = index ;
            labels[currentTabIndex] = "."; // Set label to dot when selected
            for (int i = 0; i < labels.length; i++) {
              if (i != currentTabIndex) {
                labels[i] = ""; // Set other labels to empty string
              }
            }
            provider.setCurrentIndex(index);

          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.calendar)),label: labels[0]),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.purpleSquare)),label: labels[1]),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.chat)),label: labels[2]),
          ]
      ),

    );
  }
}
