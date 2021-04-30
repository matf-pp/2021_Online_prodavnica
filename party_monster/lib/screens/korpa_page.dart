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
        title: Text('Moja korpa'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      bottomNavigationBar: new Container(
          color: Colors.black,
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                title: new Text(
                  "Ukupan iznos:",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: new Text(
                  "cena",
                  style: TextStyle(color: Colors.white),
                ),
              )),
              Expanded(
                child: new TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red.shade900)))),
                  child: new Text(
                    "Placanje",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        child: Center(
          //Ovde ide sadrzaj strane
          child: Text(
            "Ovde ce stajati proizvodi spremni za kupovinu.\n",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
