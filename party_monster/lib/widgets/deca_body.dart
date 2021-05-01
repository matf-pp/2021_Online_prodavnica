import 'package:flutter/material.dart';
import 'package:party_monster/components/horrizontal_view_deca.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../widgets/all_products.dart';

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
      imageCarousel,
      //horrizontal listview
      HorrizontalList(),
      Container(height: 400, child: AllProducts())
    ]);
  }
}
