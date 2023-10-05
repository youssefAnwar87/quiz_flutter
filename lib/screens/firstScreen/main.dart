import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/screens/firstScreen/moody_screen.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CarouselProvider(), // Your CarouselState class
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          MoodyScreen.routeName : (_)=> MoodyScreen(),
        },
        initialRoute:MoodyScreen.routeName ,
      ),
    ),
  );
}


