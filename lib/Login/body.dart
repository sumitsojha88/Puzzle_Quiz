import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Login/background.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/have_account.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_button.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_field.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password.dart';


import '../screens/quiz/quiz_screen.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //   SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/logo_small.png",
              height: size.height * 0.4,
              width: size.width * 1,
            ),
            //  SizedBox(height: size.height * 0.01),
            Text(
              "Please login or sign up to continue using the app",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            RoundedInputField(
              hintText: "Enter your user name",
              onChanged: (value) {},
            ),
            RoundedPasswordField(

            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
            //    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));

              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}