import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.onSignOut}) : super(key: key);

  Homepage({required this.onSignOut});
  final VoidCallback onSignOut;

  Future<void> _signOut() async {
    await Firebase.initializeApp;
    try {
      await FirebaseAuth.instance.signOut();
      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[git
          TextButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            onPressed: _signOut,
          ),
        ],
      ),
    );
  }
}
