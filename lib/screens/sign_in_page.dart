//@dart=2.9

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:signup/screens/sign_up_page.dart';
import 'package:signup/widgets/widgets.dart';

import '../widgets/buttomSignup.dart';

_SignInPageState _signInPageState;

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() {
    _signInPageState = _SignInPageState();
    return _signInPageState;
  }
}

class _SignInPageState extends State<SignInPage> {
  bool _togglevisibilty = true;
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
                        title: 'Log In',
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Log in with one of the following options',
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
                          'Email', EdgeInsets.fromLTRB(0, 20, 0, 10)),
                      WidgetClass.textField(
                          'learn@example.com', false, _togglevisibilty, null),
                      WidgetClass.text(
                          'Password', EdgeInsets.fromLTRB(0, 20, 0, 10)),
                      WidgetClass.textField(
                          'Use strong password',
                          true,
                          // ignore: missing_return
                          _togglevisibilty, () {
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
                            'Log in',
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
                          Text("Don't have an account?",
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 16)),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: Text(
                              '  Sign up',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )
                        ],
                      )
                    ]))));
  }
}
