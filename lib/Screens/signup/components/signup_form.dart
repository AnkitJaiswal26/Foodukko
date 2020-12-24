import 'package:flutter/material.dart';
import 'package:Foodukko/components/rounded_email_field.dart';
import 'package:Foodukko/components/rounded_password_field.dart';
import 'package:Foodukko/components/rounded_user_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          RoundedUserField(),
          SizedBox(
            height: 20,
          ),
          RoundedEmailField(),
          SizedBox(
            height: 20,
          ),
          RoundedPasswordField(),
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width * 0.9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                color: Color(0xFFEB5222),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}