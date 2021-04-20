import 'package:finance_calculator/app/landing_page.dart';
import 'package:finance_calculator/app/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

   Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Time Tracker",
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: LandingPage());
  }
}
