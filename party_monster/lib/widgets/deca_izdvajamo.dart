import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../product_deca.dart';
import './Item.dart';

class IzdvajamoDecaProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> izdvajamo_deca = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].id == '5' || pdts[i].id == '4') {
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
