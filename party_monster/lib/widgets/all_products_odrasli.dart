import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../product_odrasli.dart';
import './Item.dart';

class AllProductsOdrasli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductsO>(context);
    final pdts = productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: pdts.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: pdts[i],
          child: Item(
            name: pdts[i].name,
            price: pdts[i].price,
            imageUrl: pdts[i].imgUrl,
          )),
    );
  }
}
