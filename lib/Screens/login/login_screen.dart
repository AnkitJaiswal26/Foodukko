import 'package:flutter/material.dart';
import './components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Color(0xFF8B8B8B),
            fontSize: 16,
          ),
        ),
        title: Text(
          'Login',
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
