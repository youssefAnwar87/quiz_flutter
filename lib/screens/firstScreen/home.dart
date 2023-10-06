import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

import '../../utils/containner_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> items = [
    ContainerItem(color: Color(0xffebfcf2)),
    ContainerItem(color: Colors.blue),
    ContainerItem(color: Colors.grey),
  ];
  List<Color> dotColors = [Colors.green, Colors.grey, Colors.grey];

  @override
  Widget build(BuildContext context) {
    CarouselProvider provider = Provider.of(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
      Row(
      children: [
      Text(
      "Hello,",
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
      Text(
        " Sara Rose",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      ],
    ),
    SizedBox(height: 10),
    Row(
    children: [
    Text(
    "How are you feeling today ?",
    style: TextStyle(fontSize: 20),
    ),
    ],
    ),
    SizedBox(height: 10),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
      children: [
        CircleAvatar(
        backgroundColor: Color(0xffE4E7EC),
        radius: 30,
        child: Image.asset(AppAssets.love),
        ),
        Text("Love",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
      ],
    ),
      Column(
      children: [
        CircleAvatar(
        backgroundColor: Color(0xffE4E7EC),
        radius: 30,
        child: Image.asset(AppAssets.Frame),
        ),
        Text("Cool",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
      ],
    ),
      Column(
      children: [
        CircleAvatar(
        backgroundColor: Color(0xffE4E7EC),
        radius: 30,
        child: Image.asset(AppAssets.smile),
        ),
        Text("Happy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
      ],
    ),
      Column(
      children: [
        CircleAvatar(
        backgroundColor: Color(0xffE4E7EC),
        radius: 30,
        child: Image.asset(AppAssets.sad),
        ),
        Text("sad",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
      ],
    ),

    ],
    ),
    SizedBox(height: 12),
    Row(
    children: [
    Text(
    "Feature",
    style: TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    ),
    ),
    Spacer(),
    Text(
    "See more",
    style: TextStyle(
    fontSize: 19,
    color: Color(0Xff027A48),
    ),
    ),
    Icon(
    Icons.arrow_forward_ios,
    color: Color(0Xff027A48),
    size: 20,
    ),
    ],
    ),
          SizedBox(height: 12),

          CarouselSlider(
    items: items,
    options: CarouselOptions(
      clipBehavior: Clip.none,
    height: 170,
    aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: false,
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    onPageChanged: (index, reason) {
    // Update the selected index and dot colors

    _currentIndex = index;
    dotColors = List.generate(
    dotColors.length,
    (i) => i == _currentIndex ? Colors.green : Colors.grey,
    );
    provider.setCurrentIndex(index);

    },
    scrollDirection: Axis.horizontal,
    ),
    ),
    SizedBox(height: 12),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    buildDot(dotColors[0]),
    SizedBox(width: 8),
    buildDot(dotColors[1]),
    SizedBox(width: 8),
    buildDot(dotColors[2]),
    ],
    ),
    SizedBox(height: 28),
    Row(
    children: [
    Text(
    "Exercise",
    style: TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    ),
    ),
    Spacer(),
    Text(
    "See more",
    style: TextStyle(
    fontSize: 19,
    color: Color(0Xff027A48),
    ),
    ),
    Icon(
    Icons.arrow_forward_ios,
    color: Color(0Xff027A48),
    size: 20,
    ),
    ],
    ),
    SizedBox(height: 12),
    Row(
    children: [
    Expanded(
      flex: 2,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Scroll horizontally

      child: Container(
      decoration: BoxDecoration(
      color: Color(0xfff8f4fe),
      borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
      children: [
        Image.asset(AppAssets.relaxation),
      SizedBox(width: 20),
      Text(
      "relaxation",
      style: TextStyle(
      fontSize: 24,
      color: Colors.black,
      ),
      ),
      ],
      ),
      ),
    ),
    ),
    Expanded(
      flex: 2,
    child: SingleChildScrollView(
      child: Container(
      decoration: BoxDecoration(
      color: Color(0xfffbf1f9),
      borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
      children: [
        Image.asset(AppAssets.medetation)   ,
        SizedBox(width: 10),
      Text(
      "medetation",
      style: TextStyle(
      fontSize: 24,
      color: Colors.black,
      ),
      ),
      ],
      ),
      ),
    ),
    ),
    ],
    ),
    SizedBox(height: 12),
    Row(
    children: [
    Expanded(
    child: Container(
    decoration: BoxDecoration(
    color: Color(0xfffdf9f4),
    borderRadius: BorderRadius.circular(20),
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
    children: [

      Tab(icon: new Image.asset(AppAssets.breathing)),
      SizedBox(width: 20),
      Text(
        "breathing",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
      ),
    ],
    ),
    ),
    ),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffeff8fe),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Tab(icon: new Image.asset(AppAssets.yoga)),
              SizedBox(width: 20),
              Text(
                "yoga",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
    ),
        ],
      ),
    );
  }

  Widget buildDot(Color color) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
