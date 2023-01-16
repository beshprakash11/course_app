import 'package:course_app/constants/colors.dart';
import 'package:course_app/screens/home/widget/emoji_text.dart';
import 'package:course_app/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

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
            EmojiText(),
            SearchInput(),
          ],
        ),
      ),
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
              margin: EdgeInsets.only(top: 10, right: 10),
              padding: EdgeInsets.all(8),
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
                decoration: BoxDecoration(
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