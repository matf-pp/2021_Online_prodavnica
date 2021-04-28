//Ovo je Deca page
import 'package:flutter/material.dart';
import 'package:party_monster/constants.dart';
import 'package:party_monster/deca_kategorije.dart';
//import 'package:party_monster/deca_hrana.dart';

class DecaPage extends StatefulWidget {
  @override
  _DecaPageState createState() => _DecaPageState();
}

//class _DecaPageState extends State<DecaPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('PartyMonster'),
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
//        ),
//      ),
//      body: Container(
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
//        child: Center(
//          //Ovde ide sadrzaj strane
//          child: Text(
//            "Oprema za decije zurke",
//            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
//          ),
//        ),
//      ),
//    );
//  }
//}

class _DecaPageState extends State<DecaPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Deca",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        )),
      ],
    );
  }
}
