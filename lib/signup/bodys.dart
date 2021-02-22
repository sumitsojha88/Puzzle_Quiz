import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Login/login.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/signup/backgrounds.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/have_account2.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_button.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_field.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password2.dart';

class Body2 extends StatelessWidget {
  const Body2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = "";
    String userName = "";
    String phoneNumber = "";
    String password = "";
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //   SizedBox(height: size.height * 0.03),
            //  SizedBox(height: size.height * 0.01),
            RoundedInputField(
              hintText: "Enter your user name",
              onChanged: (value) {
                userName = value.toString();
              },
            ),
            RoundedInputField(
              hintText: "Enter your Email",
              icon: Icons.email,
              onChanged: (value) {
                email = value.toString();
              },
            ),
            RoundedInputField(
              hintText: "Enter your Phone Number",
              icon: Icons.phone,
              onChanged: (value) {
                phoneNumber = value.toString();
              },
            ),
            RoundedPasswordField(onChanged: (value) {
              password = value.toString();
            }),
            RoundedPasswordField2(),
            SizedBox(height: size.height * 0.02),
            CheckboxListTile(
                activeColor: Theme.of(context).accentColor,
                title: Text(
                  'I agree with all terms and condition',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: null),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck2(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Loginpage2();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "REGISTER",
              press: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email,
                          password: password);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SideBarLayout()));
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
