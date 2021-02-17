import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck2 extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck2({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Already have an Account ? ",
          style: TextStyle(color: Colors.blue),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}