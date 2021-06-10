import 'package:flutter/material.dart';

class TextfieldWithLabel extends StatelessWidget {
  final label;
  final double horizontalPadding;
  final int maxLines;
  final hintText;
  TextfieldWithLabel(
      {this.horizontalPadding, this.label, this.maxLines, this.hintText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$label',
          style: TextStyle(
              letterSpacing: 0.5, fontSize: 16, fontWeight: FontWeight.w900),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: 8.0),
          child: TextField(
            style: TextStyle(color: Colors.black,),
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
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        )
      ],
    );
  }
}
