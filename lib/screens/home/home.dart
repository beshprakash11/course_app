import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/active_course.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:course_app/screens/home/widget/emoji_text.dart';
import 'package:course_app/screens/home/widget/feature_course.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

import '../../models/course.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),

      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2
                )
              )
            ),
            child: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ),
        BottomNavigationBarItem(
          label: 'home',
          icon: Image.asset('assets/icons/calendar.png', width: 20,)
        ),
        BottomNavigationBarItem(
          label: 'calendar',
          icon: Image.asset('assets/icons/bookmark.png', width: 20,)
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset('assets/icons/user.png', width: 20,)
        )

      ],
    );
  }
}

AppBar _buildAppBar(){
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          "Hello Robo",
          style: TextStyle(
            fontSize: 16,
            color: kFontLignt
          ),
        ),
      ),

      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: kFontLignt.withOpacity(0.3), 
                width: 2)
              ),
              child: Image.asset('assets/icons/notification.png', width: 30,),
            ),

            Positioned(
              top: 15,
              right: 30,
              child:  Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle
                ),
              )
            )
          ],
        ),
      ],
      
    );
}