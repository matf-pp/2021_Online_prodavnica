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
          CheckoutButton(cart: cart),
        ],
      ),
    );
  }
}

class CheckoutButton extends StatefulWidget {
  final Cart cart;
  const CheckoutButton({@required this.cart});
  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red.shade900)),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      child: Text("     PORUCI     ",
          style: TextStyle(color: Colors.red.shade900, fontSize: 20)),
      onPressed: widget.cart.totalAmount <= 0
          ? null
          : () async {
              await Provider.of<Orders>(context, listen: false).addOrder(
                  widget.cart.items.values.toList(), widget.cart.totalAmount);
            },
    );
  }
}
