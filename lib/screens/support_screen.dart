import 'package:flutter/material.dart';
import 'package:hopeful/Components/textfield_with_label.dart';
import 'package:hopeful/Components/button_with_label.dart';
import 'package:hopeful/screens/submission_screen.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Kraft_background.png'),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.only(top: 90.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: TextfieldWithLabel(
                  horizontalPadding: 45.0,
                  label: 'SUBJECT',
                  hintText: 'Enter Subject',
                ),
              ),
              Container(
                  child: TextfieldWithLabel(
                horizontalPadding: 45.0,
                label: 'EMAIL ADDRESS',
                hintText: 'Enter your Email address',
              )),
              Container(
                  child: Column(
                children: [
                  TextfieldWithLabel(
                    horizontalPadding: 45.0,
                    label: 'YOUR MESSAGE',
                    hintText: 'Please Enter your message here',
                    maxLines: 12,
                  ),
                  Text(
                    'Double check your email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )),
              Padding(
                padding: EdgeInsets.only(
                    top: 30, bottom: 50.0, left: 100, right: 100.0),
                child: ButtonWithLabel(
                  label: 'Submit Request',
                  onPress: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubmissionScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
