import 'package:flutter/material.dart';

class QuoteScreen extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 85.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    'When all certainty is gone, we need to choose how to respond to what is left.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        wordSpacing: 4),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    'Uncertain times is when we test if we are living or we are only existing. It is when resilience, skill and hope make us look for solutions and fnd the next certainty into our life. It is a time of learning and making hard choices. It is about going out of the shell of habits because the world as we know it is no more. But it is also a time of new beginnings, growth and spiritual awakening, a time to be present and aware.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.3,
                        wordSpacing: 4),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 22.0),
                        child: Image.asset(
                          'images/blackLeaves.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.3,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'exit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.3,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
