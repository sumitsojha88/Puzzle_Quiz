
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Login/login.dart';
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
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Enter your Email",
              icon: Icons.email,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Enter your Phone Number",
              icon: Icons.phone,
              onChanged: (value) {},
            ),
            RoundedPasswordField(

            ),
            RoundedPasswordField2(

            ),
            SizedBox(height: size.height * 0.02),
            CheckboxListTile(
                activeColor: Theme.of(context).accentColor,
                title: Text('I agree with all terms and condition'
                  ,style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                value: false, onChanged: null),
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
              press: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}