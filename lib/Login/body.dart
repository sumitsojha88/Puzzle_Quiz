import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Login/background.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/signup/signup.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/have_account.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_button.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_field.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password.dart';

import '../screens/quiz/quiz_screen.dart';

class Body extends StatelessWidget {
  Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";
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
              hintText: "Enter your email",
              onChanged: (value) {
                email = value.toString();
              },
            ),
            RoundedPasswordField(onChanged: (value){
              password = value.toString();
            },),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () async{
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(email: email, password: password);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SideBarLayout()));
                } on FirebaseAuthException catch (e) {
                  if(e.code == 'user-not-found'){
                    //TODO: Show user the toast.
                    print("User not register");
                  }
                  else if(e.code == 'wrong-password'){
                    //TODO: Show user the toast.
                    print('Incorrect password');
                  }
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}
