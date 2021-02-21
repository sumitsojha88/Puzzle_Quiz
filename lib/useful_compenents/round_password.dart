import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/useful_compenents/text_field.dart';


class RoundedPasswordField extends StatefulWidget{
  final ValueChanged<String> onChanged;
  RoundedPasswordField({this.onChanged});

  @override
  RoundedPasswordFieldState createState() => RoundedPasswordFieldState();
}



class RoundedPasswordFieldState extends State<RoundedPasswordField> {

  bool passwordstate = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: passwordstate,
        onChanged: widget.onChanged,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          hintText: "Enter Your Password",
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