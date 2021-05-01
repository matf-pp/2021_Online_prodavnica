//Ovo je Odrasli page
import 'package:flutter/material.dart';
import 'package:party_monster/widgets/odrasli_body.dart';

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
                    colors: <Color>[
                  Colors.blue.shade900,
                  Colors.red.shade900
                ])),
          ),
        ),
        body: OdrasliBody());
  }
}
