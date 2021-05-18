import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/components/Icons.dart';
import 'package:instagram_ui/components/profile_builder.dart';
import 'package:instagram_ui/components/round_status_container.dart';
import 'package:instagram_ui/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatelessWidget {
  static String id = "homeScreen";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: createIcon(MaterialIcons.photo_camera),
          actions: [
            createIcon(MaterialIcons.send),
          ],
          title: Text(
            "Instagram ",
            style: kInstaName.copyWith(fontSize: 30),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: size.height * 0.17,
// color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kHomeHorizontalPad),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Stories",
                          style: kDarkTextStyle,
                        ),
                        Row(
                          children: [
                            Icon(
                              MaterialIcons.play_arrow,
                            ),
                            Text(
                              "Watch All",
                              style: kDarkTextStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RoundStatusContainer(size: size),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ProfileBuilder(
              profilePic: "images/profile.jfif",
              profileName: "jeniferaniston",
              uploadedImage: "images/friends.jpg",
              likedHistory:
                  "Liked by lisakudrow, mattyperry4 and 590,670 others",
            ),
            ProfileBuilder(
              profilePic: "images/5.jfif",
              profileName: "samcurran58",
              uploadedImage: "images/5.jfif",
              likedHistory: "Liked by virat.kohli and thousands of others",
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names

}
