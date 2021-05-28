import 'package:flutter/material.dart';
import 'package:hopeful/screens/purpose_Screen.dart';
import 'package:hopeful/screens/support_screen.dart';
import 'package:hopeful/screens/quote_screen.dart';

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
                              'Good Morning ',
                              style: TextStyle(
                                  color: Color(0XFFbd956c), fontSize: 20.0),
                            ),
                            Text(
                              'Sam!',
                              style: TextStyle(
                                  color: Color(0XFFbd956c),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Scan the logo to uncover your',
                          style: TextStyle(
                              color: Color(0XFFbd956c), fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'hopeful thought for today',
                          style: TextStyle(
                              color: Color(0XFFbd956c), fontSize: 20.0),
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
                              color: Color(0XFFbd956c), fontSize: 20.0),
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
                          child: Icon(
                            Icons.support_agent_outlined,
                            color: Color(0XFFbd956c),
                            size: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'support',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFFbd956c),
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
                          child: Icon(
                            Icons.info_outlined,
                            color: Color(0XFFbd956c),
                            size: 50.0,
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'purpose',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFFbd956c),
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
