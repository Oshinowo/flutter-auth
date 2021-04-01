import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_auth/screens/login_page.dart';
import 'package:flutter_auth/screens/signup_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_auth/utilities/constants.dart';
import 'package:flutter_auth/utilities/rounded_button.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'Welcome To EDU',
                    style: kHeadingStyle,
                  ),
                ),
                SvgPicture.asset(
                  'images/undraw_exams_g4ow.svg',
                  height: size.height * 0.62,
                ),
                RoundedButton(
                  buttonLabel: 'LOGIN',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ),
                    );
                  },
                  buttonColor: kPrimaryColor,
                  buttonTextColor: kPrimaryLightColor,
                ),
                SizedBox(
                  height: 25.0,
                ),
                RoundedButton(
                  buttonLabel: 'SIGN UP',
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
                  },
                  buttonColor: kPrimaryLightColor,
                  buttonTextColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
