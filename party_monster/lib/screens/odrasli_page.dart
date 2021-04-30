//Ovo je Odrasli page
import 'package:flutter/material.dart';
import 'package:party_monster/components/horrizontal_view_odrasli.dart';

class OdrasliPage extends StatefulWidget {
  @override
  _OdrasliPageState createState() => _OdrasliPageState();
}

class _OdrasliPageState extends State<OdrasliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Odrasli '),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: new ListView(children: <Widget>[
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

//kategorije proizvoda
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Hrana",
    "Pice",
    "Zabava",
    "Nargila",
    "Dekoracija"
  ];
  int selectedIndex = 0; // prvi je uvek izabran po difoltu
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Text(
          categories[index],
        ),
      ),
    );
  }
}
