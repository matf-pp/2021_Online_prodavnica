import 'package:flutter/material.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../cart.dart';
import 'package:badges/badges.dart';

class PitanjaPage extends StatefulWidget {
  @override
  _PitanjaPageState createState() => _PitanjaPageState();
}

class _PitanjaPageState extends State<PitanjaPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Pitanja'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Colors.blue.shade900,
                  Colors.red.shade900
                ])),
          ),
          actions: <Widget>[
            Badge(
              badgeContent: Text('$pdtnumber',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
              toAnimate: false,
              position: BadgePosition.topEnd(top: 3, end: 3),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KorpaPage()),
                  );
                },
              ),
            ),
          ]),
      body: SafeArea(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.red.shade900,
                ),
                title: Text('Da li vrsite dostavu i van Beograda?'),
                subtitle:
                    Text('Da, dostavu vrsimo na teritoriji cele Srbije.')),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.red.shade900,
              ),
              title: Text('Koja je cena dostave?'),
              subtitle: Text(
                  'Dostava iznosi 200.0 rsd. Za sve porudzbine preko 3000.0 rsd dostava je besplatna.'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.red.shade900,
              ),
              title: Text('Koja je rok isporuke?'),
              subtitle: Text(
                  'Poruzbinu mozete ocekivati na svojoj adresi u roku od 48 sati.'),
            ),
          ),
        ],
      )),
    );
  }
}
