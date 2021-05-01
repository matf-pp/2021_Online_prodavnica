//Ovo je Korpa page
import 'package:flutter/material.dart';
import 'package:party_monster/cart.dart';
import 'package:provider/provider.dart';
import '../cart.dart';
import '../widgets/cart_item.dart';

class KorpaPage extends StatefulWidget {
  @override
  _KorpaPageState createState() => _KorpaPageState();
}

class _KorpaPageState extends State<KorpaPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Moja korpa',
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: Column(
        children: <Widget>[
          ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) => CartProduct(
                  cart.items.values.toList()[i].id,
                  cart.items.keys.toList()[i],
                  cart.items.values.toList()[i].price,
                  cart.items.values.toList()[i].quantity,
                  cart.items.values.toList()[i].name)),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Naruči",
                style: TextStyle(color: Colors.red.shade900, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
