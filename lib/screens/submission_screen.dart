import 'package:flutter/material.dart';
import 'package:hopeful/Components/button_with_label.dart';
import 'package:hopeful/screens/login_screen.dart';
import 'package:hopeful/screens/scan_screen.dart';

class SubmissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Kraft_background.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'THANK YOU!',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5),
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.check_box_outlined,
                    size: 50.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Your request has been submitted',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.5,
                        fontSize: 14),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWithLabel(
                  label: 'Back to Scanner',
                  onPress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ScanScreen()));
                  },
                ),
                SizedBox(
                  width: 15.0,
                ),
                ButtonWithLabel(
                  label: 'Exit',
                  onPress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
