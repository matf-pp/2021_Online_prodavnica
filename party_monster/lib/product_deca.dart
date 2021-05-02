import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
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

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      category: 'Hrana',
      name: 'Smoki',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 35,
    ),
    Product(
      id: '2',
      category: 'Pice',
      name: 'Sok',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    // Product(
    //   id: '3',
    //   category: 'Hrana',
    //   name: 'Cips',
    //   imgUrl:
    //       'https://lh3.googleusercontent.com/proxy/_iDPoKhb2Uf1M5MkECJ0Q7j9gcbGVlrdPZADsWtSlE-3ZElQNznQWBYJxFVrPJFegvClwVKZ_VwXkdXWrn2OZWW_KPw',
    //   price: 60,
    // ),
    Product(
      id: '4',
      category: 'Dekoracija',
      name: 'Konfete',
      imgUrl:
          'https://static.kupindoslike.com/KONFETE-Tuba-za-Ispaljivanje-30cm_slika_XL_98572399.jpg',
      price: 500,
    ),
    Product(
      id: '5',
      category: 'Dekoracija',
      name: 'Vatromet',
      imgUrl:
          'https://spmstamenkovic.com/wp-content/uploads/2017/04/vatromet-3modela-2-600x462.jpg',
      price: 300,
    ),
    Product(
      id: '6',
      category: 'Hrana',
      name: 'Grisini',
      imgUrl: 'https://elakolije.rs/slike_pro/pro_v_1015670.jpg',
      price: 65,
    ),
    Product(
      id: '7',
      category: 'Pice',
      name: 'Koka-kola',
      imgUrl:
          'https://shop.bastapromet.rs/images/2020/05/1590656316-cocacola2l528.jpg',
      price: 120,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
}
