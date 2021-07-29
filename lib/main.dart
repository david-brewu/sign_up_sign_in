//@dart=2.9

import 'package:flutter/material.dart';
import 'package:signup/buttomSignup.dart';

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
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                      ButtonSignUp(
                        title: 'Sign Up',
                      ),
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
                    ]))));
  }
}
