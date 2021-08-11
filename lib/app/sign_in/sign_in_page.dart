import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker_flutter_course/common_widget/custom_raised_button.dart';
import 'package:time_tracker_flutter_course/common_widget/sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIME TRACKER'),
        elevation: 2.00,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.all(16.00),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign-in',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32.00,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 30.00),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text : 'Sign in with Google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: (){},
          ),
          SizedBox(height: 2.00),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text : 'Sign in with Facebook',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            onPressed: (){},
          ),
          SizedBox(height: 2.00),
          SignInButton(
            text : 'Sign in with E-mail',
            textColor: Colors.white,
            color: Colors.teal,
            onPressed: (){},
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 16.0, color:Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 2.00),
          SignInButton(
            text : 'Go Anonymous',
            textColor: Colors.black87,
            color: Colors.lime,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
