import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final double price;

  Product(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.imgUrl,
      @required this.price});
}

class Products {
  List<Product> items = [
    Product(
      id: '1',
      category: 'Hrana',
      name: 'Smoki',
      imgUrl:
          'https://www.google.com/search?q=smoki&client=ubuntu&hs=ZyZ&channel=fs&sxsrf=ALeKk03jFcDzcRfnOUkWnVFHTJbXhIq7RA:1619801383050&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj3_quwtqbwAhUrtYsKHRoDCkQQ_AUoAXoECAEQAw#imgrc=PA6EmZxfz_rqMM',
      price: 35,
    ),
    Product(
      id: '1',
      category: 'Hrana',
      name: 'Cips',
      imgUrl:
          'https://www.google.com/search?q=smoki&client=ubuntu&hs=ZyZ&channel=fs&sxsrf=ALeKk03jFcDzcRfnOUkWnVFHTJbXhIq7RA:1619801383050&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj3_quwtqbwAhUrtYsKHRoDCkQQ_AUoAXoECAEQAw#imgrc=PA6EmZxfz_rqMM',
      price: 35,
    ),
    Product(
      id: '1',
      category: 'Hrana',
      name: 'Smoki',
      imgUrl:
          'https://www.google.com/search?q=smoki&client=ubuntu&hs=ZyZ&channel=fs&sxsrf=ALeKk03jFcDzcRfnOUkWnVFHTJbXhIq7RA:1619801383050&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj3_quwtqbwAhUrtYsKHRoDCkQQ_AUoAXoECAEQAw#imgrc=PA6EmZxfz_rqMM',
      price: 35,
    ),
  ];
}
