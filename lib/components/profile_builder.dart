// In home screen .. builds the profile picture, name, uploaded photo with like
// comment and share icon.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../constants.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

class ProfileBuilder extends StatefulWidget {
  final String profileName;
  final String profilePic;
  final String uploadedImage;
  final String likedHistory;
  ProfileBuilder(
      {this.profileName,
      this.profilePic,
      this.uploadedImage,
      this.likedHistory});

  @override
  _ProfileBuilderState createState() => _ProfileBuilderState();
}

class _ProfileBuilderState extends State<ProfileBuilder> {
  final FlareControls flareControls = FlareControls();
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHomeHorizontalPad),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.profilePic),
                      radius: 17,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.profileName,
                      style: kDarkTextStyle,
                    ),
                  ],
                ),
                Icon(MaterialIcons.more_vert),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kHomeHorizontalPad),
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {
                  print("true");
                  isLiked = !isLiked;
                });
                flareControls.play("like");
              },
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.uploadedImage),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Center(
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: FlareActor(
                          'images/instagram_like.flr',
                          controller: flareControls,
                          animation: 'idle',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon_builder(
                      isLiked
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                      30,
                      isLiked),
                  icon_builder(FontAwesome.comment_o, 25),
                  icon_builder(FontAwesome.send_o, 23),
                ],
              ),
              Icon(MaterialIcons.bookmark_border, size: 30),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHomeHorizontalPad),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.likedHistory,
                  style: kDarkTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.profilePic),
                      radius: 17,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          hintText: "Add a comment...",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Text(
                    "2 Hours Ago",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding icon_builder(IconData icon, double iconSize, [bool liked = false]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Icon(
        icon,
        color: liked ? Colors.red : Colors.white,
        size: iconSize,
      ),
    );
  }
}
