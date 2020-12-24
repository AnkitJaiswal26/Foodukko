import 'package:Foodukko/Screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import './login_form.dart';
import 'package:Foodukko/components/or_divider.dart';
import 'package:Foodukko/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Login with your email and password \nor login with your social account',
                textAlign: TextAlign.center,
              ),
              LoginForm(),
              OrDivider(
                text: "OR",
                dividerColor: Color(0xFFEB5222),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(iconPath: "assets/icons/facebook.svg",),
                  SocialIcon(iconPath: "assets/icons/google-plus.svg",),
                  SocialIcon(iconPath: "assets/icons/twitter.svg",),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(
                      color: Color(0xFF8B8B8B),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        color: Color(0xFFEB5222),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}