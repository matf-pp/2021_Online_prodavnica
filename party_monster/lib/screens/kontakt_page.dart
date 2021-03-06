import 'package:flutter/material.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import 'package:badges/badges.dart';

class KontaktPage extends StatefulWidget {
  @override
  _KontaktPageState createState() => _KontaktPageState();
}

class _KontaktPageState extends State<KontaktPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Kontakt'),
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Za sve dodatne informacije možete nas kontaktirati putem telefona ili mejla, ili nas možete posetiti na adresi.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.red.shade900,
              ),
              title: Text('0628823092'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.red.shade900,
              ),
              title: Text('hsmpartymonster@gmail.com'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red.shade900,
              ),
              title: Text('Studentski trg 16, 11000 Beograd'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 25,
                  minHeight: 25,
                  maxWidth: 25,
                  maxHeight: 25,
                ),
                child: Image.asset('assets/icons/instagram.png',
                    fit: BoxFit.cover),
              ),
              title: Text('@party_monster_hsm'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                  maxWidth: 30,
                  maxHeight: 30,
                ),
                child:
                    Image.asset('assets/icons/facebook.png', fit: BoxFit.cover),
              ),
              title: Text('PartyMonster'),
            ),
          ),
        ],
      )),
    );
  }
}
