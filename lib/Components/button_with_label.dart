import 'package:flutter/material.dart';
import 'package:hopeful/constants.dart';

class ButtonWithLabel extends StatelessWidget {
  final label;
  final Function onPress;
  ButtonWithLabel({this.label, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
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
              fontSize: 16,
                letterSpacing: 1.0,
                color: kMainColor,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
