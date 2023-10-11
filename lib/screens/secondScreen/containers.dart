import 'package:flutter/material.dart';
import 'package:quiz_flutter/utils/app_assets.dart';

class item extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String ImagePath;
  Color color;
   item({required this.text1,required this.text2,required this.text3,required this.ImagePath,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(text1)),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text2,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  Text(text3,style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal
                  )
                  ),
                ],
              ),
              Spacer(),
              Image.asset(ImagePath),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Image.asset(AppAssets.clock),
                SizedBox(width: 10,),
                Text("30 mins",style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 17
                ),),
              ],
            ),
          )
        ],
      ),

    );
  }
}
