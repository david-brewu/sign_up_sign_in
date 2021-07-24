//@dart=2.9

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:signup/screens/sign_in_page.dart';
import 'package:signup/widgets/widgets.dart';

import '../widgets/buttomSignup.dart';

_SignUpPageState _signUpPageState;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() {
    _signUpPageState = _SignUpPageState();
    return _signUpPageState;
  }
}

class _SignUpPageState extends State<SignUpPage> {
  bool _togglevisibilty = true;
  WidgetClass widgetClass;
  // ignore: missing_return

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WidgetClass.container(context, MdiIcons.google),
                          WidgetClass.container(context, MdiIcons.apple)
                        ],
                      ),
                      WidgetClass.text(
                        'Name',
                        EdgeInsets.fromLTRB(0, 40, 0, 10),
                      ),
                      WidgetClass.textField(
                        'Enter your name',
                        false,
                        _togglevisibilty,
                        null,
                      ),
                      WidgetClass.text(
                          'Email', EdgeInsets.fromLTRB(0, 20, 0, 10)),
                      WidgetClass.textField(
                          'learn@example.com', false, _togglevisibilty, null),
                      WidgetClass.text(
                          'Password', EdgeInsets.fromLTRB(0, 20, 0, 10)),
                      WidgetClass.textField(
                          'Use strong password', true, _togglevisibilty,
                          // ignore: missing_return
                          () {
                        setState(() {
                          if (true) _togglevisibilty = !_togglevisibilty;
                        });
                      }),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        decoration: BoxDecoration(
                            gradient: FlutterGradients.teenParty(),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have account?',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 16)),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            child: Text(
                              '  Log in',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ]))));
  }
}
