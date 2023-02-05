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
        Flexible(flex: 1,child: Container(color: Colors.red,)),
        Flexible(flex: 5,child: Container(color: Colors.blue,)),
      ],),
    );
  }
}