import 'package:flutter/material.dart';

class CartProduct extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartProduct(this.id, this.productId, this.price, this.quantity, this.name);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: CircleAvatar(
        child: FittedBox(child: Text('$price din')),
      ),
      title: Text(name),
      subtitle: Text("Ukupno:${(price * quantity)} rsd"),
      trailing: Text("$quantity kom"),
    ));
  }
}
