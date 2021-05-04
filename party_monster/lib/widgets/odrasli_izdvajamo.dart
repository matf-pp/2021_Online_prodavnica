import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import './Item.dart';

class IzdvajamoOdrasliProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List<Product> izdvajamo_odrasli = [];
    final productData = Provider.of<Products>(context);
    final pdts = productData.items;
    for (var i = 0; i < pdts.length; i++) {
      if (pdts[i].id == '3' ||
          pdts[i].id == '62' ||
          pdts[i].id == '12' ||
          pdts[i].id == '11' ||
          pdts[i].id == '57' ||
          pdts[i].id == '58' ||
          pdts[i].id == '40' ||
          pdts[i].id == '44') {
        izdvajamo_odrasli.add(pdts[i]);
      }
    }
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: izdvajamo_odrasli.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
          value: izdvajamo_odrasli[i],
          child: Item(
            name: izdvajamo_odrasli[i].name,
            price: izdvajamo_odrasli[i].price,
            imageUrl: izdvajamo_odrasli[i].imgUrl,
          )),
    );
  }
}
