import 'package:flutter/material.dart';
import '../constants.dart';

List<String> names = [
  "virat.kohli",
  "mahi7781",
  "abdevilliers",
  "sureshraina",
  "anushka.sharma",
  "alicaagarwal",
  "aliah.bhat",
  "kajalaagarwal",
  "atharwa",
  "dineshkarthik",
  "deepika.padkon",
  "harsha_lucky45"
];

class YouOption extends StatelessWidget {
  const YouOption({
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
            itemCount: names.length,
            itemBuilder: (context, index) {
              return FollowingRow(index: index, size: size);
            },
          ),
        )
      ],
    );
  }
}

class FollowingRow extends StatelessWidget {
  FollowingRow({this.index, this.size});
  final int index;
  final size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kPaddingHorizontal),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: AssetImage("images/profile.jfif"),
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            width: size.width * 0.5,
            child: Text(
              "You started following ${names[index]}",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              //doto later
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              "following",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
