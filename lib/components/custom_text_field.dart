// Used in Login screen that creates the custom text field for given hint text

import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.text, this.isObscure});
  final String text;
  final bool isObscure;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        cursorColor: Colors.grey,
        obscureText: isObscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF2C2C2C),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide.none,
          ),
          hintText: text,
          hintStyle: kLightTextStyle.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
