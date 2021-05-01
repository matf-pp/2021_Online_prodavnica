import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;

  Item({this.name, this.imageUrl, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(
              name,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            // subtitle: Text(
            //   price.toString(),                                               //KAKO DA SE PRETVORI BROJ U TEXT???
            //   style: TextStyle(color: Colors.black.withOpacity(1.2)),
            // ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
              ),
              onPressed: null,
            ),
            backgroundColor: Colors.grey.shade300,
          ),
        ));
  }
}
