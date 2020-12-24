import 'package:flutter/material.dart';
import 'package:Foodukko/components/rounded_email_field.dart';
import 'package:Foodukko/components/rounded_password_field.dart';
import 'package:Foodukko/components/rounded_user_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  RoundedEmailField emailInput = RoundedEmailField();
  RoundedPasswordField passwordInput = RoundedPasswordField();
  RoundedUserField userInput = RoundedUserField();  

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
          userInput,
          SizedBox(
            height: 20,
          ),
          emailInput,
          SizedBox(
            height: 20,
          ),
          passwordInput,
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
                onPressed: () {
                  print(emailInput.email);
                  print(passwordInput.password);
                  print(userInput.username);
                },
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