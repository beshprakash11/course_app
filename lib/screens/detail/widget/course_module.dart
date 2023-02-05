import 'package:course_app/models/module.dart';
import 'package:flutter/material.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  CourseModule(this.module);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Row(children: [
        Flexible(flex: 1,child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: module.iconBorder, width: 2),
                  color: module.iconBG,
                  shape: BoxShape.circle
                ),
                child: Icon(module.icon, size: 30, color: module.iconColor,)
              ),
          ],),
          color: Colors.red,)),
        Flexible(flex: 5,child: Container(color: Colors.blue,)),
      ],),
    );
  }
}