import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomePage',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        actions: [
          FlatButton(
            onPressed: () {},
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
