import 'package:flutter/material.dart';
import 'package:hopeful/screens/scan_screen.dart';
import 'package:hopeful/Components/textfield_with_label.dart';
import 'package:hopeful/Components/button_with_label.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFbd956c),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Kraft_background.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Welcome to your Hopeful app!",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 37.0, right: 37.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 7.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: TextfieldWithLabel(
                            label: 'Username',
                            horizontalPadding: 45.0,
                            hintText: 'Enter your username',
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_box_outlined,
                                size: 40.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Grant camera access to \n scan my bamboolian logo',
                                style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                        ButtonWithLabel(
                          label: 'Save and Continue',
                          onPress: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScanScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
