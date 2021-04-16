import 'package:finance_calculator/app/Home_Page.dart';
import 'package:finance_calculator/app/sign_in/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;
  void _updateuser (User user){
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user==null){
    return SignInPage(
       onSinIn: _updateuser,
    );
    }
    return HomePage();

  }
}
