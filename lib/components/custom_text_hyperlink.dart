// Used in login screen that creates  hyperlink texts

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
      ),
      onTap: () {},
    );
  }
}
