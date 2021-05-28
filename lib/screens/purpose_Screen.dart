import 'package:flutter/material.dart';

class PurposeScreen extends StatelessWidget {
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
          padding: EdgeInsets.only(top: 18.0, left: 18.0, right: 56.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'THE PURPOSE OF HOPEFUL',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'To create a more hopeful world. Scan the bamboolian logo and gain access to exclusive, written content which honors your struggles and capacity for hope in the midst of uncertainties.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.black,
                      fontSize: 18.0,
                      height: 2),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'New content are broadcasted every 24 hours. during this time, you can review, save and/or share the content with others.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 0.5,
                    height: 2,
                  ),
                ),
                SizedBox(
                  height: 120.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "powered by ",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    Text(
                      "bamboolian",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 18.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
