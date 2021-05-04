import 'package:flutter/material.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import 'package:badges/badges.dart';

class ONamaPage extends StatefulWidget {
  @override
  _ONamaPageState createState() => _ONamaPageState();
}

class _ONamaPageState extends State<ONamaPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('O nama'),
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Učiniti momenat nezaboravnim je glavna misija PartyMonster-a!\nBilo da je Vaše dete napunilo 3 godine ili želite da napravite nezaboravnu žurku za svoj 21. rodjendan bez brige, tu smo mi! Naš tim je Vaš verni saučesnik u planiranju žurki koje se pamte.\nZajedno sa Vama investiramo u radost, sreću i čarobne momente, jer život je jedna velika žurka!',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.red.shade900,
              ),
              title: Text('Hristina Nikolić, PR'),
              subtitle: Text("hristina.nik.pi@gmail.com"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.red.shade900,
              ),
              title: Text('Sara Živković, CR'),
              subtitle: Text("sarazivkovic99@gmail.com"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.contact_mail,
                color: Colors.red.shade900,
              ),
              title: Text('Milan Dimitrijević, IT'),
              subtitle: Text('mildim999@gmail.com'),
            ),
          ),
        ],
      ),
    );
  }
}
