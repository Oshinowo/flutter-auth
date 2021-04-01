import 'package:flutter/material.dart';
import 'constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.buttonLabel,
      this.onPress,
      this.buttonColor = kPrimaryColor,
      this.buttonTextColor = kPrimaryLightColor});

  final String buttonLabel;
  final Function onPress;
  final Color buttonColor, buttonTextColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          onPressed: onPress,
          child: Text(buttonLabel),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            foregroundColor: MaterialStateProperty.all(buttonTextColor),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 20, horizontal: 80),
            ),
          ),
        ),
      ),
    );
  }
}
