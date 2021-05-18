import 'package:flutter/material.dart';

import '../constants.dart';

List<String> imgName = [
  "a.jfif",
  "b.jfif",
  "c.jfif",
  "d.jfif",
  "e.jfif",
  "f.jfif",
  "g.jfif",
  "h.jfif",
  "i.jfif"
];

class FollowingPage extends StatelessWidget {
  const FollowingPage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: ListView.builder(
            itemCount: imgName.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: kPaddingVertical),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: AssetImage("images/1.jfif"),
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Container(
                      width: size.width * 0.52,
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            children: [
                              TextSpan(
                                text: "pretham_freaky ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: "liked your photo."),
                              TextSpan(
                                  text: " 5d",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ))
                            ]),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Image(
                      height: size.height * 0.075,
                      width: size.height * 0.07,
                      image: AssetImage("images/${imgName[index]}"),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
