import 'package:flutter/material.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class ContainerItem extends StatelessWidget {
  Color color;
   ContainerItem({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Postive Vibes",style: TextStyle(
            color: Color(0xff344054),
            fontSize: 20,
            fontWeight: FontWeight.normal
          ),textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Text("Boost your mood with ",style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14
                  ),),
                  Text("postive vibes",style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),textAlign: TextAlign.start,
                  ),

                ],
              ),
              Spacer(),
              Image.asset(AppAssets.WalkingtheDog)
            ],
          ),
          Expanded(
            child: Row(children: [
              CircleAvatar(backgroundColor: Color(0xff32d482),
              child: Icon(Icons.play_arrow,color: Colors.white,),),
              SizedBox(width: 10,),
              Text("10 mins",style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20
              ))
            ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25)
      ),
    );
  }
}
