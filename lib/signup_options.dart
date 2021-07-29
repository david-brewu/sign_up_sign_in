//@dart=2.9

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _container(context, MdiIcons.google),
          _container(context, MdiIcons.apple)
        ],
        // ignore: dead_code
      ),
      _text(
        'Name',
        EdgeInsets.fromLTRB(0, 40, 0, 10),
      ),
      _textField(
        'Enter your name',
        false,
      ),
      _text('Email', EdgeInsets.fromLTRB(0, 20, 0, 10)),
      _textField(
        'learn@example.com',
        false,
      ),
      _text('Password', EdgeInsets.fromLTRB(0, 20, 0, 10)),
      _textField(
        'Use strong password',
        true,
      ),
      // ignore: missing_return

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
              style: TextStyle(color: Colors.white38, fontSize: 16)),
          InkWell(
            onTap: () {},
            child: Text(
              '  Log in',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      )
      // ignore: empty_statements
    ]);
  }

  Widget _container(BuildContext context, IconData _iconData) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 3.0, color: Colors.white10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(_iconData),
        iconSize: 30,
        color: Colors.white,
      ),
    );
  }

  Widget _text(String data, EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: Text(
        data,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _textField(
    String hintText,
    bool obscure,
  ) {
    return TextField(
      obscureText: obscure ? _togglevisibilty : false,
      cursorColor: Colors.purpleAccent,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          suffixIcon: obscure
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      if (true) _togglevisibilty = !_togglevisibilty;
                    });
                  },
                  icon: _togglevisibilty
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility))
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white24),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  width: 3.0, color: Colors.white10, style: BorderStyle.solid)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.purpleAccent,
                  width: 3.0))),
    );
  }
}
