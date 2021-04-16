import 'package:finance_calculator/app/sign_in/sign_in_button.dart';
import 'package:finance_calculator/common_widgets/custom_raised_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:finance_calculator/app/sign_in/social_sign_in_button.dart';


 class SignInPage extends StatelessWidget {

   const SignInPage({Key key, @required this.onSinIn}) : super(key: key);
   final void Function (User) onSinIn;
  Future <void> _signInAnonumoesly() async{
    try{
      final UserCredential = await FirebaseAuth.instance.signInAnonymously();
     onSinIn(UserCredential.user);
  } catch (e){
      print(e.toString());
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center
          (child: Text('Time Tracker')
        ),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget _buildContent(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                Text('Sign in',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),),

            SizedBox(height: 48.0),
            SocialSignInButton(
              assetName: 'images/go-logo.png',
             text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: (){},
            ),
            SizedBox(height: 8),
            SocialSignInButton(
              assetName: 'images/fb-logo.png',
              text: 'Sign in with Facebook',
              textColor: Colors.white,
              color: Color(0xFF334D92),
              onPressed: (){},
            ),
            SizedBox(height: 8),
            SignInButton(
              text: 'Sign in with Email',
              textColor: Colors.white,
              color: Colors.teal.shade700,
              onPressed: (){},
            ),
            SizedBox(height: 8),
            Text('or', style: TextStyle(fontSize: 14.0,color: Colors.black87),
            textAlign: TextAlign.center,),
            SizedBox(height: 8),
            SignInButton(
              text: 'Go anonymous',
              textColor: Colors.black,
              color: Colors.lime.shade300,
              onPressed: _signInAnonumoesly,
            ),
        ],
      ),
    );
  }

}
