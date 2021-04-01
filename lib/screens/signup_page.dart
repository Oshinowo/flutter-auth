import 'package:flutter/material.dart';
import 'package:flutter_auth/utilities/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_auth/utilities/login_input_field.dart';
import 'package:flutter_auth/utilities/rounded_button.dart';
import 'package:flutter_auth/utilities/already_have_account_check.dart';
import 'login_page.dart';
import 'package:flutter_auth/utilities/signup_or_divider.dart';
import 'package:flutter_auth/utilities/social_media_icon.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'SIGNUP',
                    style: kHeadingStyle,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                SvgPicture.asset(
                  'images/undraw_Sign_in_re_o58h.svg',
                  height: size.height * 0.3,
                ),
                InputField(
                  icon: Icons.person,
                  inputHintText: "Email Address",
                  onchanged: (value) {},
                  asterikText: false,
                ),
                InputField(
                  icon: Icons.lock,
                  inputHintText: "Password",
                  onchanged: (value) {},
                  asterikText: true,
                ),
                SizedBox(height: size.height * 0.01),
                RoundedButton(
                  buttonLabel: 'Sign Up',
                  onPress: () {
                    print('sign up successfull');
                  },
                ),
                SizedBox(height: size.height * 0.02),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      iconSrc: 'images/google.svg',
                    ),
                    SocialMediaIcon(
                      iconSrc: 'images/facebook.svg',
                    ),
                    SocialMediaIcon(
                      iconSrc: 'images/twitter.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
