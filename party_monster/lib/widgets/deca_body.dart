import 'package:flutter/material.dart';
import 'package:party_monster/components/horrizontal_view_deca.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/deca_izdvajamo.dart';

class DecaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
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
    return new ListView(children: <Widget>[
      imageCarousel,
      new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Text(
          "Kategorije",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      HorrizontalList(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Izdvajamo iz ponude:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
      Container(height: 400, child: IzdvajamoDecaProducts())
    ]);
  }
}
