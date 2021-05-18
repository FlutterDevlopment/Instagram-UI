import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/components/YouPage.dart';
import 'package:instagram_ui/components/following_page.dart';
import 'package:instagram_ui/constants.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  bool selected1 = true;
  bool selected2 = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          selected1 = true;
                          selected2 = false;
                        });
                      },
                      child: Text(
                        "Following",
                        style: kTopTextStyling,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kPaddingHorizontal / 3),
                      height: 2,
                      width: size.width / 2,
                      color: selected1 ? Colors.white : Colors.transparent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          selected2 = true;
                          selected1 = false;
                        });
                      },
                      child: Text(
                        "You",
                        style: kTopTextStyling,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kPaddingHorizontal / 3),
                      height: 2,
                      width: size.width / 2,
                      color: selected2 ? Colors.white : Colors.transparent,
                    ),
                  ],
                )
              ],
            ),
            selected2 ? YouOption(size: size) : FollowingPage(size: size)
          ],
        ),
      ),
    );
  }
}
