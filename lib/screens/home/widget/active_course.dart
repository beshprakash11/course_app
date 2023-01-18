import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';

//circular progress bar
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle("Currently active", "view all"),
          Container(
            margin: const EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLignt.withOpacity(0.1),
              border: Border.all(
                color: kFontLignt.withOpacity(0.3),
                width: 1
              ),
              borderRadius: BorderRadius.circular(8),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/images/progress.png', width: 60,),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Symetry theroy',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kFont
                          ),
                        ),
                        Text(
                          '2 lesson left',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFont
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: Text(
                    '21%',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  progressColor: kAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}