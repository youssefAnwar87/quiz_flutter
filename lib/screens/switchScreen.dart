import 'package:flutter/material.dart';
import 'package:quiz_flutter/screens/firstScreen/moody_screen.dart';
import 'package:quiz_flutter/screens/secondScreen/workOutApp.dart';
import 'package:quiz_flutter/screens/thirdScreen/News.dart';

class SwitchScreen extends StatelessWidget {
  static String routeName = "switch";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, MoodyScreen.routeName);
                },
                child: Text("Moody Screen")),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, WorkApp.routeName);
                },
                child: Text("WorkOut Screen")),
            SizedBox(height: 10,),

            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, News.routeName);
                },
                child: Text("News Screen")),
            ],
        ),
      ),
    );
  }
}
