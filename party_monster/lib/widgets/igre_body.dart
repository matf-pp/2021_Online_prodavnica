import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class IgreProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> igre = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Igre') {
        igre.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: igre.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: igre[i],
          child: Item(
            name: igre[i].name,
            price: igre[i].price,
            imageUrl: igre[i].imgUrl,
          )),
    );
  }
}
