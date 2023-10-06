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
  List<String> chipLabels = [
    'Discovered',
    'News',
    'Most Viewed',
    'Saved',
    'Chip 5',
    'Chip 6'
  ];
  int selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    CarouselProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(color: Colors.grey)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple), // Set the focused border color
                            ),
                            hintText:
                                'Articles, Video, Audio and More,...', // Hint text
                            prefixIcon: Icon(Icons.search), // Suffix icon
                          ),
                          // Other properties and validators
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                height: MediaQuery.of(context).size.height *
                    0.04, // Height of the chip row
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
                              color: selectedChipIndex == index
                                  ? Color(0xff6941c5)
                                  : Colors.grey),
                        ),
                        selected: selectedChipIndex == index,
                        selectedColor: Color(0xfff3eafe),
                        onSelected: (bool selected) {
                          selectedChipIndex = selected ? index : -1;
                          provider.setCurrentIndex(index);
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  Text("Hot topics",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: MediaQuery.of(context)
                            .size
                            .width, // Adjust the width as needed
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                                index % 2 == 0 ? AppAssets.pic1 : AppAssets.pic2),
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
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  Text("Get Tips",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              Image.asset(AppAssets.pic3),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),

              Row(
                children: [
                  Text("Cycle Phases and Period",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
              // SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
