import 'package:flutter/material.dart';
import 'package:party_monster/screens/deca_hrana_page.dart';
import 'package:party_monster/screens/deca_pice_page.dart';
import 'package:party_monster/screens/deca_dekoracija_page.dart';

class HorrizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            ikonica: IconButton(
              icon: Icon(
                Icons.restaurant,
                size: 45.0,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DecaHranaPage()));
              },
            ),
            opis: 'Hrana',
          ),
          Category(
            ikonica: IconButton(
              icon: Icon(
                Icons.local_drink,
                size: 45.0,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DecaPicePage()));
              },
            ),
            opis: 'Sokovi',
          ),
          Category(
            ikonica: IconButton(
                icon: Icon(
                  Icons.star,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DecaDekoracijaPage()));
                }),
            opis: 'Dekoracija',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final IconButton ikonica;
  final String opis;

  Category({this.ikonica, this.opis});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
            title: ikonica,
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                opis,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
