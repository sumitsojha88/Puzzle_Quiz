import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/text_field.dart';



class RoundedPasswordField2 extends StatefulWidget{
  @override
  RoundedPasswordField2State createState() => RoundedPasswordField2State();
}



class RoundedPasswordField2State extends State<RoundedPasswordField2> {

  // final ValueChanged<String> onChanged;
  bool passwordstate = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: passwordstate,
        //     onChanged: onChanged,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintText: "Repeat Your Password",
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          //   suffixIcon: passwordstate? Icon(Icons.visibility_off): Icon(Icons.visibility),
          suffixIcon: IconButton(
              icon: passwordstate ? Icon(Icons.visibility_off) : Icon(
                  Icons.visibility),
              onPressed: () =>
              {
                setState(() {
                  passwordstate = !passwordstate;
                }
                )
              }
          ),
          /*  suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ), */
          border: InputBorder.none,
        ),
      ),
    );
  }
}