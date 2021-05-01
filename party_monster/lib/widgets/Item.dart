import 'package:flutter/material.dart';
import 'package:party_monster/product.dart';
import 'package:provider/provider.dart';
import '../product.dart';
import '../cart.dart';

class Item extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;

  Item({this.name, this.imageUrl, this.price});

  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(
              name,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            // subtitle: Text(
            //   "$price", //KAKO DA SE PRETVORI BROJ U TEXT???
            //   style: TextStyle(color: Colors.black.withOpacity(1.2)),
            // ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
              ),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text(
                    "Dodato u korpu!",
                    style: TextStyle(color: Colors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                  ),
                  elevation: 1.0,
                  backgroundColor: Colors.grey.shade400,
                ));
                cart.addItem(pdt.id, pdt.name, pdt.price);
              },
            ),
            backgroundColor: Colors.grey.shade300,
          ),
        ));
  }
}
