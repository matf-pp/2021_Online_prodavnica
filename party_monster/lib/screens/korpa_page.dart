//Ovo je Korpa page

import 'package:flutter/material.dart';
import 'package:party_monster/cart.dart';
import 'package:party_monster/orders.dart';
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
    TextEditingController namecontroller = TextEditingController();
    TextEditingController adressecontroller = TextEditingController();
    final cart = Provider.of<Cart>(context);
    final double price = cart.totalAmount;
    double total = 0.0;
    if (price > 0 && price < 3000) {
      total = price + 200.0;
    } else {
      total = price;
    }
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
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, i) => CartProduct(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ime i prezime:',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: adressecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adresa i mesto:',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(),
            child: Text(
                'Dostava za celu Srbiju iznosi 200 rsd.\nZa porudzbine preko 3000 rsd dostava je besplatna. \nVas racun je: $total rsd.'),
          ),
          Container(
            height: 50.0,
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: cart.totalAmount <= 0.0
                  ? null
                  : () async {
                      String name = namecontroller.text;
                      String adresse = adressecontroller.text;
                      namecontroller.clear();
                      adressecontroller.clear();
                      cart.clear();

                      await Provider.of<Orders>(context, listen: false)
                          .addOrder(cart.items.values.toList(),
                              cart.totalAmount, name, adresse);
                    },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          Colors.blue.shade900,
                          Colors.red.shade900
                        ]),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "PORUCI",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
