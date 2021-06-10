import 'package:flutter/material.dart';
import 'package:hopeful/screens/purpose_Screen.dart';
import 'package:hopeful/screens/support_screen.dart';
import 'package:hopeful/screens/quote_screen.dart';

import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';

class ScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF292829),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 70.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Good morning Sam! ',
                              style: TextStyle(
                                  color: kMainColor, fontSize: 23.0,fontWeight: FontWeight.w600,
                                  fontFamily: "Nexa",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QuoteScreen()));
                        },
                        child: Text(
                          'Camera will open up here\n click here to go to quote page',
                          style: TextStyle(
                              color: kMainColor, fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: Center(
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SupportScreen()));
                          },
                          child:Image.asset("images/icons/Support.png",
                          height: 50,
                          width: 50,)
                        ),
                        // SizedBox(
                        //   height: 2.0,
                        // ),
                        Text(
                          'Support',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kMainColor,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PurposeScreen()));
                          },
                          child: Image.asset("images/icons/Leaves Brown.png",height: 50,width: 50,)
                        ),
                        // SizedBox(
                        //   height: 8.0,
                        // ),
                        Text(
                          '129,392',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: kMainColor,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    )
                  ],
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
