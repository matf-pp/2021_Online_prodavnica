//Ovo je Izdvojeno page
import 'package:flutter/material.dart';

class IzdvojenoPage extends StatefulWidget {
  @override
  _IzdvojenoPageState createState() => _IzdvojenoPageState();
}

class _IzdvojenoPageState extends State<IzdvojenoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PartyMonster'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        child: Center(
          //Ovde ide sadrzaj strane
          child: Text(
            "Izdvojeno iz ponude",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
