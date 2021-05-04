import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class SokoviProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> sokovi = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Sokovi') {
        sokovi.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: sokovi.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: sokovi[i],
          child: Item(
            name: sokovi[i].name,
            price: sokovi[i].price,
            imageUrl: sokovi[i].imgUrl,
          )),
    );
  }
}
