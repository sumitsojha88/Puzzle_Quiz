import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/navigation.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';


class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return SideBarLayout();
  }
}