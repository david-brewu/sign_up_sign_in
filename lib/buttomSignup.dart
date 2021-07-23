//@dart=2.9
import 'package:flutter/material.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white10, width: 3.0)),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 16,
              )),
        ),
        SizedBox(
          width: 20,
        ),
        Text('Sign Up',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold))
      ],
    );
  }
}
