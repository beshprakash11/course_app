import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';

class Module{
  Color iconBorder;
  Color iconBG;
  Color iconColor;
  IconData icon;
  String title;
  String desc;
  Color moudleBorder;
  Color moduleBg;
  Color buttonColor;
  Color buttonFont;
  String time;
  String lession;
  Module(
    this.iconBorder, this.iconBG, this.iconColor,
    this.icon, 
    this.title, this.desc,
    this.moudleBorder, this.moduleBg, this.buttonColor, this.buttonFont, 
    this.time, this.lession
  );
  static List<Module> generateModules(){
    return [
      Module(
        kAccent,
        kAccent,
        Colors.white, 
        Icons.play_arrow_rounded, 
        'Module 1', 
        'How it all started.\nExplanation.', 
        kPrimaryLight, 
        kPrimaryLight, 
        kprimary, 
        kPrimaryDark, 
        '22 min',
        '2 lession'
      ),
      Module(
        kFontLignt.withOpacity(0.3),
        Colors.white,
        kFontLignt.withOpacity(0.7), 
        Icons.play_arrow_rounded, 
        'Module 2', 
        'What we didn\'t know\nabout castastrophe', 
        kPrimaryLight, 
        Colors.white, 
        Colors.green.withOpacity(0.2), 
        Colors.grey, 
        '22 min',
        '2 lession'
      ),

    ];
  }
}