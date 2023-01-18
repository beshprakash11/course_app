import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseProgress extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'This progress',
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: kFont
            ),
          ),
          Row(
            children: [
              Image.asset('assets/icons/grid.png', width: 25,),
              SizedBox(width: 15,),
              Image.asset('assets/icons/list.png', width: 25,)
            ],
          )
        ],
      ),
    );
  }
}