import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({this.iconSrc});

  final String iconSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kPrimaryLightColor,
          width: 2.0,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconSrc,
        width: 20.0,
        height: 20.0,
      ),
    );
  }
}
