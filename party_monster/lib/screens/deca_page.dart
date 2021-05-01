//Ovo je Deca page
import 'package:flutter/material.dart';
import 'package:party_monster/widgets/deca_body.dart';
import 'package:party_monster/screens/korpa_page.dart';

class DecaPage extends StatefulWidget {
  @override
  _DecaPageState createState() => _DecaPageState();
}

class _DecaPageState extends State<DecaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Deca'),
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
      body: DecaBody(),
    );
  }
}

//class _DecaPageState extends State<DecaPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//       title: Text('PartyMonster'),
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.topLeft,
//                  end: Alignment.bottomRight,
//                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
//       ),
//      ),
//      body: Container(
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//                begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//                colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
//        child: Center(
//Ovde ide sadrzaj strane
//          child: Text(
//            "Oprema za zurke za decu",
//            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
//          ),
//        ),
//      ),
//    );
//  }
//}
