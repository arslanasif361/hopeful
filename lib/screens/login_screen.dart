import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Kraft background.png'),
                fit: BoxFit.fill)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 120.0),
              Text(
                "Welcome to your hopeful App!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
