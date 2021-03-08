import 'package:flutter/material.dart';

class   CategorytitleAnimation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        'Category',
        style: TextStyle(fontSize: 42, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 3000),
      builder: (BuildContext context, double _val, Widget child) {
        return Opacity(
          opacity: _val,
          child: Padding(
              padding: EdgeInsets.only(top: _val * 20),
              child: child
          ),
        );
      },
    );
  }
}