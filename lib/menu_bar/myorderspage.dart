import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/navigation.dart';






class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Orders",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}