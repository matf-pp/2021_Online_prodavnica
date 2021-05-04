import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class AlkoholProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> alkohol = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Alkohol') {
        alkohol.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: alkohol.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: alkohol[i],
          child: Item(
            name: alkohol[i].name,
            price: alkohol[i].price,
            imageUrl: alkohol[i].imgUrl,
          )),
    );
  }
}
