import 'package:flutter/material.dart';

class RoundedEmailField extends StatelessWidget {
  const RoundedEmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Enter your Email",
          hintStyle: TextStyle(fontSize: 14),
          labelText: "Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              EdgeInsets.symmetric(vertical: 18, horizontal: 42),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(29),
            borderSide: BorderSide(color: Colors.black),
            gapPadding: 8,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(29),
            borderSide: BorderSide(
              color: Colors.black,
            ),
            gapPadding: 8,
          ),
          suffixIcon: Icon(Icons.email),
        ),
      ),
    );
  }
}