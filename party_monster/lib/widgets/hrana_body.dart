import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../product_deca.dart';
import './Item.dart';

class HranaProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> hrana = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].category == 'Hrana') {
        hrana.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: hrana.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: hrana[i],
          child: Item(
            name: hrana[i].name,
            price: hrana[i].price,
            imageUrl: hrana[i].imgUrl,
          )),
    );
  }
}
