
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Category_puzzle_components/Category_puzzle_details.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/navigation.dart';



class SettingsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Settings",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );

  }
}
