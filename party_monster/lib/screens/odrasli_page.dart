//Ovo je Odrasli page
import 'package:flutter/material.dart';
import 'package:party_monster/widgets/odrasli_body.dart';
import 'package:party_monster/screens/korpa_page.dart';

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
            title: Text('Odrasli '),
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
              IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
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
            ]),
        body: OdrasliBody());
  }
}
