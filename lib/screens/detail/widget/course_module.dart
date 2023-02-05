import 'package:course_app/models/module.dart';
import 'package:flutter/material.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  CourseModule(this.module);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Course Module'),
    );
  }
}