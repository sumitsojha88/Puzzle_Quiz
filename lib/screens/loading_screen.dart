import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Login/login.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/global_variables.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().then((value) {
      FirebaseAuth.instance.authStateChanges().listen((User user) {
        if (user == null) {
          //TODO: Show Toast.
          print('User is not logged in.');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Loginpage2()));
        } else {
          currentUser = user;
          //TODO: Show toast.
          print('User signed in.');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SideBarLayout()));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text('Loading...Add krna h aachi si'),
      ),
    );
  }
}
