import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui/data/images_data.dart';

StatusImageData statusImageData = StatusImageData();

class RoundStatusContainer extends StatelessWidget {
  const RoundStatusContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: size.height * 0.11,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: statusImageData.images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              child: CircleAvatar(
                radius: 35.0,
                backgroundImage: AssetImage(statusImageData.images[index]),
                child: Container(
                  margin: EdgeInsets.only(top: 40, left: 42),
                  child: index == 0
                      ? CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            MaterialIcons.add,
                            color: Colors.white,
                            size: 19,
                          ),
                        )
                      : null,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
