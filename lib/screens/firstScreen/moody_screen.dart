import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/calender.dart';
import 'package:quiz_flutter/screens/firstScreen/home.dart';
import 'package:quiz_flutter/screens/firstScreen/person.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/sqaure.dart';
import 'package:quiz_flutter/utils/app_assets.dart';
import 'package:badges/badges.dart' as badges;

class MoodyScreen extends StatefulWidget {
  static String routeName = "Moody";

  @override
  State<MoodyScreen> createState() => _MoodyScreenState();
}

class _MoodyScreenState extends State<MoodyScreen> {
  List<String> labels = [".", "", "", ""];
  int currentTabIndex = 0;
   String pointForSelected ="";

  List<Widget>tabs =[
    HomeScreen(),
    CalendarTab(),
    SqaureTab(),
    PersonTab(),
    ];
  @override
  Widget build(BuildContext context) {
    CarouselProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height*0.1,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: new Tab(icon: new Image.asset(AppAssets.group)),
        title: Text("Moody",
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 25,right: 10),
            child: badges.Badge(
              badgeContent: Text(''),
              child: Icon(Icons.notifications,size: 30,color: Colors.black,),
            ),
          )        ],
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Prevents items from shifting

          selectedItemColor: Color(0Xff027A48),
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
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.square)),label: labels[1]),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.calendar)),label: labels[2]),
            BottomNavigationBarItem(icon:ImageIcon(AssetImage(AppAssets.user)),label: labels[3]),
          ]
      ),

    );
  }


}

