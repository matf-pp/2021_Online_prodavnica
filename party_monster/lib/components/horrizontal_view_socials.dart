import 'package:flutter/material.dart';

class HorrizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Social(
            imgUrl: '',
            opis: '@party_monster',
          ),
          Social(
            imgUrl: '',
            opis: 'PartyMonster',
          ),
        ],
      ),
    );
  }
}

class Social extends StatelessWidget {
  final String imgUrl;
  final String opis;

  Social({this.imgUrl, this.opis});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200.0,
          child: ListTile(
            title: Image.asset(imgUrl),
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
