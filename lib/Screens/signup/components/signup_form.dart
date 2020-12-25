import 'package:flutter/material.dart';
import 'package:Foodukko/components/rounded_email_field.dart';
import 'package:Foodukko/components/rounded_password_field.dart';
import 'package:Foodukko/components/rounded_user_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Foodukko/Screens/login/login_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _auth = FirebaseAuth.instance;
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
                onPressed: () async {
                  print(emailInput.email);
                  print(passwordInput.password);
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: emailInput.email,
                        password: passwordInput.password);
                    if(newUser != null){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    }
                  } catch (e) {
                    print('hii');
                    print(e);
                    print('hii');
                  }
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
