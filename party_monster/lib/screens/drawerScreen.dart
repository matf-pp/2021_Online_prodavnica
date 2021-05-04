// Ovo je Drawer Screen

import 'package:flutter/material.dart';
import 'package:party_monster/screens/deca_page.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:party_monster/screens/kontakt_page.dart';
import 'package:party_monster/screens/pitanja_page.dart';
import 'package:party_monster/screens/o_nama_page.dart';
import 'package:party_monster/screens/odrasli_page.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
      padding: EdgeInsets.only(top: 50, bottom: 5, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'PartyMonster',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
          ),
          Column(children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OdrasliPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Odrasli',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DecaPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.child_care,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Deca',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KorpaPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Korpa',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KontaktPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Kontakt',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PitanjaPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.contact_support_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Pitanja',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ONamaPage()),
                );
              },
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'O nama',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
            ),
          ]),
          Center(
              child: Text(
            '© 2021 HSM, All Rights Reserved',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ))
        ],
      ),
    );
  }
}
