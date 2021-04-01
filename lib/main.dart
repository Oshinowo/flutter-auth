import 'package:flutter/material.dart';
import 'utilities/constants.dart';
import 'screens/home_page.dart';

void main() {
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      home: HomePage(),
    );
  }
}
