import 'package:flutter/material.dart';

class ButtonWithLabel extends StatelessWidget {
  final label;
  final Function onPress;
  ButtonWithLabel({this.label, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: TextButton(
          onPressed: onPress,
          child: Text(
            '$label',
            style: TextStyle(
                letterSpacing: 1.0,
                color: Color(0XFFbd956c),
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
