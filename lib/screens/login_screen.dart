import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/components/custom_button.dart';
import 'package:instagram_ui/components/custom_text_field.dart';
import 'package:instagram_ui/components/custom_text_hyperlink.dart';
import 'package:instagram_ui/constants.dart';
import 'package:instagram_ui/screens/center_brain_page.dart';
import 'package:instagram_ui/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static String id = "loginScreen";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account?",
                  style: kLightTextStyle,
                ),
                CustomTextButton("Sign up.")
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Instagram",
                  style: kInstaName,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  text: 'Phone number,email or username',
                  isObscure: false,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  text: 'Password',
                  isObscure: true,
                ),
                SizedBox(
                  height: 8,
                ),
                CustomButton(
                  text: "Log In",
                  onPress: () {
                    Navigator.pushNamed(context, CenterPage.id);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot your login details?",
                      style: kLightTextStyle,
                    ),
                    CustomTextButton("Get help signing in."),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    thickness: 1.5,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "OR",
                      style:
                          kLightTextStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                ]),
                CustomButton(
                  text: "Log in with facebook",
                  onPress: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
