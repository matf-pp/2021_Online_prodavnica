//Ovo je Odrasli page
import 'package:flutter/material.dart';

class OdrasliPage extends StatefulWidget {
  @override
  _OdrasliPageState createState() => _OdrasliPageState();
}

class _OdrasliPageState extends State<OdrasliPage> {
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
            "Oprema za zurke za odrasle",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
