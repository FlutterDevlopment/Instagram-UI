import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/center_brain_page.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
      ),
      initialRoute: LoginScreen.id, //TODO: to be changed to login screen
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        CenterPage.id: (context) => CenterPage(),
      },
    );
  }
}
