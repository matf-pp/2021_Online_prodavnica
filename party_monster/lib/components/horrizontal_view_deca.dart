import 'package:flutter/material.dart';

class HorrizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            ikonica: new Icon(
              Icons.restaurant,
              size: 50.0,
            ),
            opis: 'Hrana',
          ),
          Category(
            ikonica: new Icon(
              Icons.local_drink,
              size: 50.0,
            ),
            opis: 'Piće',
          ),
          Category(
            ikonica: new Icon(
              Icons.star,
              size: 50.0,
            ),
            opis: 'Dekoracija',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final Icon ikonica;
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
