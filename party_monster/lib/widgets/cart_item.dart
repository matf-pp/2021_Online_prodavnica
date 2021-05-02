import 'package:flutter/material.dart';
import 'package:party_monster/cart.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartProduct(this.id, this.productId, this.price, this.quantity, this.name);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red.shade900,
      ),
      onDismissed: (direction) {
        Provider.of<Cart>(context).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: Icon(Icons.arrow_forward_ios),
          title: Text(name),
          subtitle: Text("Ukupno: ${(price * quantity)} rsd"),
          trailing: Text("$price × $quantity"),
        ),
      ),
    );
  }
}
