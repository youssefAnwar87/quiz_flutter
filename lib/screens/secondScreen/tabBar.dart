import 'package:flutter/material.dart';
import 'package:quiz_flutter/screens/secondScreen/containers.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TabBar(
                padding: EdgeInsets.only(left: 0), // Adjust the value as needed
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Colors.black, // Color of the selected tab indicator
              labelColor: Colors.black, // Color of the selected tab label
              unselectedLabelColor: Colors.grey,
// Color of unselected tab labels
              tabs: [
                Tab(text: 'All Type'),
                Tab(text: 'Full Body'),
                Tab(text: 'Upper'),
                Tab(text: 'Lower'),
              ],
              onTap: (index) {
                // Handle tab selection here
              },
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.4, // Adjust the height as needed
          child: TabBarView(
            controller: _tabController,
            children: [
              // Content for the 'All Type' tab
              buildListView1(),
              // Content for the 'Full Body' tab
              buildListView2(),
              // Content for the 'Upper' tab
              buildListView3(),
              // Content for the 'Lower' tab
              buildListView4(),
            ],
          ),
        ),
      ],
    );
  }
List<Widget>Containers1 =[
 item(text2:"Morning Yoga" ,text3:"Improve mental focus." ,text1 : "7 days" ,ImagePath:AppAssets.morningYoga ,color: Colors.lightBlue,),
 item(text1:"3 days" ,text2:"Plank Exercise" ,text3:"Improve posture and stability." ,ImagePath: AppAssets.pngwing,color: Colors.grey ,),
];
  List<Widget>Containers2=[
    item(text2:"Morning Yoga" ,text3:"Improve mental focus." ,text1 : "7 days" ,ImagePath:AppAssets.morningYoga ,color: Colors.green,),
    item(text1:"3 days" ,text2:"Plank Exercise" ,text3:"Improve posture and stability." ,ImagePath: AppAssets.pngwing,color: Colors.orange ,),
  ];
  List<Widget>Containers3=[
    item(text2:"Morning Yoga" ,text3:"Improve mental focus." ,text1 : "7 days" ,ImagePath:AppAssets.morningYoga ,color: Colors.purple,),
    item(text1:"3 days" ,text2:"Plank Exercise" ,text3:"Improve posture and stability." ,ImagePath: AppAssets.pngwing,color: Colors.brown ,),
  ];
  List<Widget>Containers4=[
    item(text2:"Morning Yoga" ,text3:"Improve mental focus." ,text1 : "7 days" ,ImagePath:AppAssets.morningYoga ,color: Colors.lightGreen,),
    item(text1:"3 days" ,text2:"Plank Exercise" ,text3:"Improve posture and stability." ,ImagePath: AppAssets.pngwing,color: Colors.tealAccent ,),
  ];
  // Replace this with your actual content for each tab
  Widget buildListView1() {
    return ListView.separated(
      separatorBuilder: (_,int)=>SizedBox(height: 10,),
      itemCount: 10, // Replace with your actual item count
      itemBuilder: (context, index) {
        return Containers1[index%2];
      },
    );
  }
  Widget buildListView2() {
    return ListView.separated(
      separatorBuilder: (_,int)=>SizedBox(height: 10,),
      itemCount: 10, // Replace with your actual item count
      itemBuilder: (context, index) {
        return Containers2[index%2];
      },
    );
  }
  Widget buildListView3() {
    return ListView.separated(
      separatorBuilder: (_,int)=>SizedBox(height: 10,),
      itemCount: 10, // Replace with your actual item count
      itemBuilder: (context, index) {
        return Containers3[index%2];
      },
    );
  }
  Widget buildListView4() {
    return ListView.separated(
      separatorBuilder: (_,int)=>SizedBox(height: 10,),
      itemCount: 10, // Replace with your actual item count
      itemBuilder: (context, index) {
        return Containers4[index%2];
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
