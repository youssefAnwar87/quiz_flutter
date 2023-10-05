import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';
import 'package:quiz_flutter/screens/secondScreen/arrowTab.dart';
import 'package:quiz_flutter/screens/secondScreen/home.dart';
import 'package:quiz_flutter/screens/secondScreen/person.dart';
import 'package:quiz_flutter/screens/secondScreen/statTab.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class WorkApp extends StatefulWidget {
  static String routeName ="workApp";

  @override
  State<WorkApp> createState() => _WorkAppState();
}

class _WorkAppState extends State<WorkApp> {
  List<String> labels = ["", "", "", ""];
  int currentTabIndex = 0;
  String pointForSelected ="";
  List<Widget>tabs =[
    HomeScreen(),
    ArrowTab(),
    StatTab(),
    PersonTab(),
  ];
  @override
  Widget build(BuildContext context) {
    CarouselProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Prevents items from shifting

          selectedItemColor: Color(0xff363f72),
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
            BottomNavigationBarItem(icon: Icon(Icons.home),label : labels[0]),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.arrow)),label: labels[1]),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.barchart)),label: labels[2]),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.user)),label: labels[3]),
          ]
      ),

    );
  }
}
