import 'package:flutter/material.dart';
import 'package:party_monster/widgets/sokovi_body.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../cart.dart';
import 'package:badges/badges.dart';

class DecaPicePage extends StatefulWidget {
  @override
  _DecaPicePageState createState() => _DecaPicePageState();
}

class _DecaPicePageState extends State<DecaPicePage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Sokovi'),
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
        body: ListView(children: <Widget>[SokoviProducts()]));
  }
}
