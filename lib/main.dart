import 'package:flutter/material.dart';
import 'package:hopeful/screens/splash_screen.dart';
import 'package:hopeful/screens/login_screen.dart';
import 'package:hopeful/screens/support_screen.dart';

import 'screens/scan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SupportScreen(),
      theme: ThemeData(fontFamily: "Nexa Bold"),
    );
  }
}
