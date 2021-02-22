import 'package:flutter/material.dart';


class Checkboxsignup extends StatefulWidget{
  @override
  CheckboxsignupState createState() => CheckboxsignupState();
}



class CheckboxsignupState extends State<Checkboxsignup> {

  // final ValueChanged<String> onChanged;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  CheckboxListTile(
        value: isChecked,
        activeColor: Theme.of(context).accentColor,
        title: Text(
          '   I agree with all terms and conditions',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        onChanged: (bool value){
          setState(() {
            isChecked = value;
            //   print(isChecked)     // How did value change to true at this point?
          });
        }
    );
  }
}