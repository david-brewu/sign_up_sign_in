//@dart=2.9

import 'package:flutter/material.dart';
import 'package:signup/buttomSignup.dart';
import 'package:signup/signup_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUP(),
    );
  }
}

class SignUP extends StatefulWidget {
  const SignUP({Key key}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 80, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonSignUp(),
              SizedBox(
                height: 60,
              ),
              Text(
                'Sign up with one of the following options',
                style: TextStyle(color: Colors.white24),
              ),
              SizedBox(
                height: 10,
              ),
              SignUpOptions()
            ],
          ),
        ),
      ),
    );
  }
}
