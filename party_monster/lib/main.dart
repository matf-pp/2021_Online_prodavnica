import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Ovaj vidget je osnova nase aplikacije.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("Ovo ce biti nasa aplikacija"),
          ),
        ),
      ),
    );
  }
}
