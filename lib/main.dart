import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_main.dart';

import 'package:puzzle_riddle_apti_app/Login/login.dart';
import 'package:puzzle_riddle_apti_app/level_page/level_page_details.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/screens/quiz/quiz_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: levelsScreen(),
    );
  }
}
