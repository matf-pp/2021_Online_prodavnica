import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class NargilaProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> nargila = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Nargila') {
        nargila.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: nargila.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: nargila[i],
          child: Item(
            name: nargila[i].name,
            price: nargila[i].price,
            imageUrl: nargila[i].imgUrl,
          )),
    );
  }
}
