import 'package:flutter/material.dart';
import 'package:party_monster/components/horrizontal_view_odrasli.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/odrasli_izdvajamo.dart';

class OdrasliBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('pictures/odrasli_carousel_pictures/pic1.jpeg'),
            AssetImage('pictures/odrasli_carousel_pictures/pic2.jpeg'),
            AssetImage('pictures/odrasli_carousel_pictures/pic3.jpeg'),
            AssetImage('pictures/odrasli_carousel_pictures/pic4.jpeg'),
            AssetImage('pictures/odrasli_carousel_pictures/pic5.jpeg'),
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
          "Kategorije:",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
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
      HorrizontalList(),
      Container(height: 400, child: IzdvajamoOdrasliProducts()),
    ]);
  }
}
