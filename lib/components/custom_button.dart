// Used in login screen which creates a custom button for given text

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text, this.onPress});
  final String text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      height: 50,
      minWidth: double.infinity,
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
