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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'THANK YOU!',
              style: TextStyle(
                //fontFamily: "Nexa Bold",
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.5),
            ),
            SizedBox(height: 6,),
            Container(
              child: Column(
                children: [
                  Text("Your request has been submitted.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 4,),
                  Text("Make sure to check your email inbox",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 4,),
                  Text("or spam folder in 24 hours.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWithLabel(
                  label: 'Scan Mode',
                  onPress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ScanScreen()));
                  },
                ),
                SizedBox(
                  width: 20.0,
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
