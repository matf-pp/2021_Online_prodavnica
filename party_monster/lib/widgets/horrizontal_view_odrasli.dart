import 'package:flutter/material.dart';
import 'package:party_monster/screens/hrana_page.dart';
import 'package:party_monster/screens/sokovi_page.dart';
import 'package:party_monster/screens/alkohol_page.dart';
import 'package:party_monster/screens/nargila_page.dart';
import 'package:party_monster/screens/igre_page.dart';

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
                Icons.no_drinks,
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
                  Icons.liquor,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlkoholPage()));
                }),
            opis: 'Alkohol',
          ),
          Category(
            ikonica: IconButton(
                icon: Icon(
                  Icons.smoking_rooms,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NargilaPage()));
                }),
            opis: 'Nargila',
          ),
          Category(
            ikonica: IconButton(
                icon: Icon(
                  Icons.sports_esports,
                  size: 45.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IgrePage()));
                }),
            opis: 'Igre',
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
