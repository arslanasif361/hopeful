import 'package:flutter/material.dart';

class SimpleTextField extends StatelessWidget {
  final double horizontalPadding;
  final int maxLines;
  final hintText;
  SimpleTextField({this.horizontalPadding, this.maxLines, this.hintText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: 10.0),
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: '$hintText',
              hintStyle: TextStyle(fontSize: 16),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(8),
            ),
          ),
        )
      ],
    );
  }
}
