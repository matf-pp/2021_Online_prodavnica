//Ovo je Korpa page
import 'package:flutter/material.dart';

class KorpaPage extends StatefulWidget {
  @override
  _KorpaPageState createState() => _KorpaPageState();
}

class _KorpaPageState extends State<KorpaPage> {
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
            "Ovde ce stajati proizvodi spremni za kupovinu.\nTakodje ovse ce se obavljati porucivanje",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
