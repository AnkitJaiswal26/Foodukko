import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final Color dividerColor;
  final Color textColor;
  final String text;
  const OrDivider({
    this.dividerColor,
    this.textColor = Colors.black,
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              //color: Color(0xFFEB5222),
              color: dividerColor,
              height: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: dividerColor,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
