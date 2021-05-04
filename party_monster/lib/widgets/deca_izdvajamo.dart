import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class IzdvajamoDecaProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Product> izdvajamo_deca = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].id == '60' ||
          pdts[i].id == '8' ||
          pdts[i].id == '7' ||
          pdts[i].id == '22' ||
          pdts[i].id == '26' ||
          pdts[i].id == '25') {
        izdvajamo_deca.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: izdvajamo_deca.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: izdvajamo_deca[i],
          child: Item(
            name: izdvajamo_deca[i].name,
            price: izdvajamo_deca[i].price,
            imageUrl: izdvajamo_deca[i].imgUrl,
          )),
    );
  }
}
