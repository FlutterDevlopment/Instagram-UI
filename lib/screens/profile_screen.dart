import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_ui/constants.dart';
import 'package:instagram_ui/data/images_data.dart';

var image = StatusImageData();

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "jeniferaniston",
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 1, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage(
                      "images/profile.jfif",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: kHomeHorizontalPad),
                    child: Row(
                      children: [
                        followers_grid("Posts", "1,090"),
                        followers_grid("Followers", "42.5M"),
                        followers_grid("Following", "780")
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.014,
              ),
              Text(
                "Jenifer Aniston",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * 0.014,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                minWidth: size.width,
                onPressed: () {
                  //nothing
                },
                child: Text(
                  "Edit profile",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon_profile(MaterialIcons.grid_on),
                  Icon_profile(
                    CupertinoIcons.photo,
                  ),
                  Icon_profile(
                    MaterialIcons.perm_contact_calendar,
                  ),
                ],
              ),
              Divider(
                height: 1,
                color: Colors.grey[600],
              ),
              StaggeredGridView.countBuilder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                itemCount: image.profileImage.length,
                crossAxisSpacing: 3,
                // mainAxisSpacing: 3,
                itemBuilder: (context, index) {
                  return Image(
                      height: 20,
                      width: 20,
                      image: AssetImage(image.profileImage[index]));
                },
                staggeredTileBuilder: (index) => StaggeredTile.count(1, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding Icon_profile(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: IconButton(
          icon: Icon(
            icon,
            color: Colors.grey,
            size: 30.0,
          ),
          onPressed: () {}),
    );
  }

  // ignore: non_constant_identifier_names
  Padding followers_grid(title, count) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Text(
            count,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
