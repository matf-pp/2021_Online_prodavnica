import 'package:flutter/foundation.dart';

class ProductO with ChangeNotifier {
  final String id;
  final String category;
  final String name;
  final String imgUrl;
  final double price;

  ProductO(
      {@required this.id,
      @required this.category,
      @required this.name,
      @required this.imgUrl,
      @required this.price});
}

class ProductsO with ChangeNotifier {
  List<ProductO> _items = [
    ProductO(
      id: '1',
      category: 'Hrana',
      name: 'Tortilja',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/hc2/h22/8904194523166.png',
      price: 70,
    ),
    ProductO(
      id: '2',
      category: 'Nargila',
      name: 'Jagoda',
      imgUrl:
          'https://lh3.googleusercontent.com/proxy/bvZxGs8kpPjat8bSgDpzJB9OQB3033sQqgBo7EBSEofS2K3V-T-zEC1GirOQZWpUPrAArfWhqgAJ0VafJusrvrMnoOkYi7VBjWkVcXR1OUJ6Wt-b_c-RJziI9bTbnw',
      price: 100,
    ),
    ProductO(
      id: '3',
      category: 'Nargila',
      name: 'nargila',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/0/0/008254.jpg',
      price: 60,
    ),
    ProductO(
      id: '4',
      category: 'Alkohol',
      name: 'Dzin',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/dzin-gordons-0-7l-1003420-large.jpg',
      price: 500,
    ),
    ProductO(
      id: '5',
      category: 'Pice',
      name: 'Tonik',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/hb5/h01/8850339233822.png',
      price: 300,
    ),
    ProductO(
      id: '6',
      category: 'Hrana',
      name: 'Kokice',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    ProductO(
      id: '7',
      category: 'Pice',
      name: 'Koka-kola',
      imgUrl:
          'https://shop.bastapromet.rs/images/2020/05/1590656316-cocacola2l528.jpg',
      price: 120,
    ),
    ProductO(
      id: '8',
      category: 'Nargila',
      name: 'Menta',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    ProductO(
      id: '9',
      category: 'Pice',
      name: 'Vodtka',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h81/h92/8896408748062.jpg',
      price: 1200,
    ),
    ProductO(
      id: '10',
      category: 'Bezalkoholno',
      name: 'Voda',
      imgUrl:
          'https://dijaspora.shop/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/p/r/pro_v_1001229.jpg',
      price: 65,
    ),
  ];

  List<ProductO> get items {
    return [..._items];
  }
}
