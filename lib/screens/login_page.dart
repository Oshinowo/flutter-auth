import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/utilities/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_auth/utilities/login_input_field.dart';
import 'package:flutter_auth/utilities/rounded_button.dart';
import 'signup_page.dart';
import 'package:flutter_auth/utilities/already_have_account_check.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 5.0),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'LOGIN',
                    style: kHeadingStyle,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                SvgPicture.asset(
                  'images/undraw_Brainstorming_re_1lmw.svg',
                  height: size.height * 0.39,
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
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  buttonLabel: 'LOGIN',
                  onPress: () {
                    print('login successful!');
                  },
                ),
                SizedBox(height: size.height * 0.04),
                AlreadyHaveAnAccountCheck(
                  login: true,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
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
