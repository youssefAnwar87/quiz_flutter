import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_flutter/screens/firstScreen/provider.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  final List<String> chipLabels = [
    'Discovered',
    'News',
    'Most Viewed',
    'Saved',
    'Chip 5',
    'Chip 6',
  ];
  Set<int> selectedChipIndices = {};

  int selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CarouselProvider>(context);

    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
            child: Column(
            children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Tab(
    icon: Image.asset(AppAssets.flower),
    ),
    Text(
    "AliceCare",
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    ),
    ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Container(
    decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(13),
    border: Border.all(color: Colors.grey),
    ),
    width: MediaQuery.of(context).size.width *0.85,
    child: TextFormField(
    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.purple),
    ),
    hintText: 'Articles, Video, Audio and More,...',
    prefixIcon: Icon(Icons.search),
    ),
    ),
    ),
    ],
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
    Container(
    height: MediaQuery.of(context).size.height * 0.04,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: chipLabels.length,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: ChoiceChip(
    label: Text(
    chipLabels[index],
    style: TextStyle(
    color:  selectedChipIndices.contains(index) // Check if the index is in the set
        ? Color(0xff6941c5)
        : Colors.grey,
    ),
    ),
    selected: selectedChipIndices.contains(index),
    selectedColor: Color(0xfff3eafe),
    onSelected: (bool selected) {
      if (selected) {
        selectedChipIndices.add(index); // Add index to set when selected
      } else {
        selectedChipIndices.remove(index); // Remove index from set when unselected
      }    provider.setCurrentIndex(index);
    },
    ),
    );
    },
    ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
    Row(
    children: [
    Text(
    "Hot topics",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    Spacer(),
    Text(
    "See more",
    style: TextStyle(
    fontSize: 19,
    color: Color(0Xff5925DC),
    ),
    ),
    Icon(
    Icons.arrow_forward_ios,
    color: Color(0Xff5925DC),
    size: 20,
    ),
    ],
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
    Container(
    height: 200, // Set an appropriate height
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
    width: 300, // Adjust the width as needed
    decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10),
    image: DecorationImage(
    image: AssetImage(
    index % 2 == 0 ? AppAssets.pic1 : AppAssets.pic2,
    ),
    fit: BoxFit.cover,
    ),
    ),
    ),
    );
    },
    ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
    Row(
    children: [
    SizedBox(width: 10),
    Text(
    "Get Tips",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    ],
    ),
    SizedBox(height: 20), // Adjust the height as needed
    Image.asset(AppAssets.pic3),
    SizedBox(height: 20), // Adjust the height as needed
    Row(
    children: [
    Text(
    "Cycle Phases and Period",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    Spacer(),
    Text(
    "See more",
    style: TextStyle(
    fontSize: 19,
    color: Color(0Xff5925DC),
    ),
    ),
    Icon(
    Icons.arrow_forward_ios,
    color: Color(0Xff5925DC),
    size: 20,
    ),
    ],
    ),
    ],
    ),
            ),
        ),
    );
  }
}