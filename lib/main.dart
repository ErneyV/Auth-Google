import 'dart:ui';

import 'package:auth_app/services/google_sign_in_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(FontAwesomeIcons.doorOpen),
                onPressed: () {
                  GoogleSignInService.signOut();
                })
          ],
          title: Text('Auth App Google and Apple'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  minWidth: double.infinity,
                  height: 40,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google, color: Colors.white),
                      Text('  Sign in with goolge',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                    ],
                  ),
                  onPressed: () {
                    GoogleSignInService.signInWithGoogle();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
