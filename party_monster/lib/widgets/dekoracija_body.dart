import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../product_deca.dart';
import './Item.dart';

class DekoracijaProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> dekoracija = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Dekoracija') {
        dekoracija.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: dekoracija.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: dekoracija[i],
          child: Item(
            name: dekoracija[i].name,
            price: dekoracija[i].price,
            imageUrl: dekoracija[i].imgUrl,
          )),
    );
  }
}
