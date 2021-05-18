import 'package:flutter/material.dart';
import 'file:///C:/Users/kshar/AndroidStudioProjects/instagram_ui/lib/bottom_navigation_bar.dart';

class CenterPage extends StatelessWidget {
  static String id = "center_page";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
      ),
      home: CustomBottomNavigation(),
    );
  }
}
