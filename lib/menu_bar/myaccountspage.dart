
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/navigation.dart';




class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Accounts",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}