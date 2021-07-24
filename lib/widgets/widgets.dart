import 'package:flutter/material.dart';

class WidgetClass {
  static Widget container(BuildContext context, IconData _iconData) {
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

  static Widget text(String data, EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: Text(
        data,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  static Widget textField(
    String hintText,
    bool obscure,
    bool _togglevisibilty,
    Function onPressed(),
  ) {
    return TextField(
      obscureText: obscure ? _togglevisibilty : false,
      cursorColor: Colors.purpleAccent,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          suffixIcon: obscure
              ? IconButton(
                  onPressed: onPressed,
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
