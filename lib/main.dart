import 'package:flutter/material.dart';
import 'package:language_learning/screens/homepage.dart';

void main() {
  runApp(tukoApp());
}

class tukoApp extends StatelessWidget {
  const tukoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

