import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [          
            CategoryTitle('Top of the week', 'view all'),
            Container(
              height: 300,
              child: ListView.separated(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: ((BuildContext context, index) => CourseItem(courseList[index])),
                separatorBuilder: (context, index) => SizedBox(width: 15,)
              ),
            ),
        ],
      ),
    );
  }
}