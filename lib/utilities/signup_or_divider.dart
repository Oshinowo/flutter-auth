import 'package:flutter/material.dart';
import 'constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              height: 1.5,
              color: Color(0xffd9d9d9d),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'OR',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Divider(
              height: 1.5,
              color: Color(0xffd9d9d9d),
            ),
          ),
        ],
      ),
    );
  }
}
