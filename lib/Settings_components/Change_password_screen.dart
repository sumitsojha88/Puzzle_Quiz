import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/settings.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/round_password2.dart';

class changescreenpassword extends StatefulWidget   {
  @override
  _changescreenpasswordState createState() => _changescreenpasswordState();
}

class  _changescreenpasswordState extends State<changescreenpassword>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
           leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
          title: Text('Change Password',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  color: Color(0xFF545D68))),
      ),

      body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Text('Create New Password',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 15.0),
            Text('Your New password should be Different from previous used password',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Text(
              'Password',
                style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 18.0,
                fontWeight: FontWeight.w100)
            ),
            RoundedPasswordField(),
            Text(
                'Must Have atleast 6 characters',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w100)
            ),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Text(
                'Confirm Password',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w100)
            ),
            RoundedPasswordField2(),
            Text(
                'Both Password must Match',
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w100)
            ),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            SizedBox(height: 15.0),
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueAccent,
                border: Border.all(color: Colors.blueAccent),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                         child: Center(
                           child: Text(
                             '          Reset Password',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.w500,
                               color: Colors.white,
                             ),
                           ),
                         )
                      )
                    ],
                  ),
                ),
              ),
            ),
      ],
      ),

    );
  }

}