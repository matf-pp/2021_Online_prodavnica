import 'package:flutter/material.dart';
import 'package:party_monster/cart.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatefulWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartProduct(this.id, this.productId, this.price, this.quantity, this.name);

  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Dismissible(
      key: ValueKey(widget.id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red.shade900,
      ),
      onDismissed: (direction) {
        setState(() {
          cart.removeItem(widget.productId);
        });
      },
      child: Card(
        child: ListTile(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(widget.name),
          subtitle: Text("Ukupno: ${(widget.price * widget.quantity)} rsd"),
          trailing: Text("${widget.price} × ${widget.quantity}"),
        ),
      ),
    );
  }
}
