import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_auth/utilities/text_field_container.dart';

class InputField extends StatelessWidget {
  InputField({this.icon, this.inputHintText, this.onchanged, this.asterikText});

  final IconData icon;
  final String inputHintText;
  final ValueChanged<String> onchanged;
  final bool asterikText;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: asterikText,
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: inputHintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
