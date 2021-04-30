//Ovo je Deca page
import 'package:flutter/material.dart';
import 'package:party_monster/components/horrizontal_view_deca.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DecaPage extends StatefulWidget {
  @override
  _DecaPageState createState() => _DecaPageState();
}

class _DecaPageState extends State<DecaPage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('pictures/deca_carousel_pictures/pic1.jpeg'),
            AssetImage('pictures/deca_carousel_pictures/pic2.jpeg'),
            AssetImage('pictures/deca_carousel_pictures/pic3.jpeg'),
            AssetImage('pictures/deca_carousel_pictures/pic4.jpeg'),
            AssetImage('pictures/deca_carousel_pictures/pic5.jpeg'),
          ],
          autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000)),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deca'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: new ListView(children: <Widget>[
        image_carousel,
        new Padding(
          //padding widget
          padding: const EdgeInsets.all(8.0),
          child: new Text(
            "Kategorije:",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        //horrizontal listview
        HorrizontalList(),
      ]),
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
