import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui/screens/favourites_screen.dart';
import 'package:instagram_ui/screens/home_screen.dart';
import 'package:instagram_ui/screens/profile_screen.dart';

class CustomBottomNavigation extends StatefulWidget {
  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    FavouritesScreen(),
    HomeScreen(),
    FavouritesScreen(),
    ProfilePage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: onTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                MaterialIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                MaterialIcons.search,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.plus_square_fill,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart_fill,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_crop_square_fill,
              ),
              label: 'Home'),
        ],
      ),
    );
  }
}
