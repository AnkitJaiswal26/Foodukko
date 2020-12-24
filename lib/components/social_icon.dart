import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconPath;

  const SocialIcon({
    this.iconPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color(0xFF8B8B8B),
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          //"assets/icons/facebook.svg",
          iconPath,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}