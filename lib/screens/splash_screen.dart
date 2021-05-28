import 'dart:async';
import 'package:hopeful/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _bgVisible = false;
  bool _visible = false;

  _makeVisible() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        _visible = true;
      });
    });
  }

  // _makeInvisible() {
  //   Timer(Duration(seconds: 4), () {
  //     setState(() {
  //       _visible = false;
  //     });
  //   });
  // }

  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      setState(() {
        _bgVisible = true;
      });
    });
    _makeVisible();
  }

  @override
  Widget build(BuildContext context) {
    // _makeInvisible();

    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: _bgVisible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Kraft_background.png'),
                      fit: BoxFit.fill)),
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 1000),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(),
                    Column(
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/blackLeaves.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                width: 70.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Hopeful",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("powered by "),
                        Text(
                          "bamboolian",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
