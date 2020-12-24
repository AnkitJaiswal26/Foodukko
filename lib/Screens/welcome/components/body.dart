import 'package:flutter/material.dart';
import './background.dart';
import 'package:Foodukko/components/rounded_button.dart';
import 'package:Foodukko/Screens/login/login_screen.dart';
import 'package:Foodukko/Screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              'DELIVERED \nFAST FOOD \nTO YOUR \nRECIPIES',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                height: 1.5,
                letterSpacing: 1.5,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedButton(
            color: Color(0xFF8BBD41),
            text: 'LOGIN',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return LoginScreen();
                })
              );
            },
          ),
          RoundedButton(
            color: Color(0xFFEB5222),
            text: 'SIGN UP',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return SignUpScreen();
                })
              );
            },
          ),
        ],
      ),
    );
  }
}
