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
      category: 'Sokovi',
      name: 'Jabuka',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    Product(
      id: '3',
      category: 'Hrana',
      name: 'Cips',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 60,
    ),
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
      name: 'Stapici',
      imgUrl: 'https://elakolije.rs/slike_pro/pro_v_1015670.jpg',
      price: 65,
    ),
    Product(
      id: '7',
      category: 'Sokovi',
      name: 'Coca Cola',
      imgUrl:
          'https://shop.bastapromet.rs/images/2020/05/1590656316-cocacola2l528.jpg',
      price: 120,
    ),
    Product(
      id: '8',
      category: 'Hrana',
      name: 'Tortilje',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/hc2/h22/8904194523166.png',
      price: 70,
    ),
    Product(
      id: '9',
      category: 'Nargila',
      name: 'Jagoda',
      imgUrl:
          'https://lh3.googleusercontent.com/proxy/bvZxGs8kpPjat8bSgDpzJB9OQB3033sQqgBo7EBSEofS2K3V-T-zEC1GirOQZWpUPrAArfWhqgAJ0VafJusrvrMnoOkYi7VBjWkVcXR1OUJ6Wt-b_c-RJziI9bTbnw',
      price: 100,
    ),
    Product(
      id: '10',
      category: 'Nargila',
      name: 'Cokolada',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/0/0/008254.jpg',
      price: 60,
    ),
    Product(
      id: '11',
      category: 'Alkohol',
      name: 'Dzin',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/dzin-gordons-0-7l-1003420-large.jpg',
      price: 500,
    ),
    Product(
      id: '12',
      category: 'Sokovi',
      name: 'Tonik',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/hb5/h01/8850339233822.png',
      price: 300,
    ),
    Product(
      id: '13',
      category: 'Hrana',
      name: 'Kokice',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    Product(
      id: '14',
      category: 'Sokovi',
      name: 'Fanta',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/hb5/h01/8850339233822.png',
      price: 120,
    ),
    Product(
      id: '15',
      category: 'Nargila',
      name: 'Menta',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '16',
      category: 'Alkohol',
      name: 'Vodka',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h81/h92/8896408748062.jpg',
      price: 1200,
    ),
    Product(
      id: '17',
      category: 'Sokovi',
      name: 'Voda',
      imgUrl:
          'https://dijaspora.shop/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/p/r/pro_v_1001229.jpg',
      price: 65,
    ),
    Product(
      id: '18',
      category: 'Sokovi',
      name: 'Breskva',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    Product(
      id: '19',
      category: 'Sokovi',
      name: 'Pomorandza',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    Product(
      id: '20',
      category: 'Sokovi',
      name: 'Sumsko voce',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    Product(
      id: '21',
      category: 'Sokovi',
      name: 'Multivitamin',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 100,
    ),
    Product(
      id: '22',
      category: 'Sokovi',
      name: 'Sprite',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 120,
    ),
    Product(
      id: '23',
      category: 'Hrana',
      name: 'Jaffa',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 80,
    ),
    Product(
      id: '24',
      category: 'Dekoracija',
      name: 'Baloni',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '25',
      category: 'Dekoracija',
      name: 'Svecice',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '26',
      category: 'Dekoracija',
      name: 'Kapice',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '27',
      category: 'Hrana',
      name: 'Mix',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    Product(
      id: '28',
      category: 'Hrana',
      name: 'Kikiriki',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    Product(
      id: '29',
      category: 'Hrana',
      name: 'Semenke',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    Product(
      id: '30',
      category: 'Hrana',
      name: 'Suncokret',
      imgUrl:
          'https://online.idea.rs/images/products/446/446105032_1l.jpg?1593015462',
      price: 150,
    ),
    Product(
      id: '31',
      category: 'Dekoracija',
      name: 'Duvaljke',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '32',
      category: 'Dekoracija',
      name: 'Tanjirici',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '33',
      category: 'Dekoracija',
      name: 'Salvete',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 90,
    ),
    Product(
      id: '34',
      category: 'Nargila',
      name: 'Breskva',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '35',
      category: 'Nargila',
      name: 'Jabuka',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '36',
      category: 'Nargila',
      name: 'Vanila',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '37',
      category: 'Nargila',
      name: 'Kokos',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '38',
      category: 'Nargila',
      name: 'Kafa',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '39',
      category: 'Igre',
      name: 'Ne ljuti se covece',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '40',
      category: 'Igre',
      name: 'Karte',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '41',
      category: 'Igre',
      name: 'Monopol',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '42',
      category: 'Igre',
      name: 'Monopol',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '43',
      category: 'Igre',
      name: 'Yamb',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '44',
      category: 'Igre',
      name: 'PS4',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 65,
    ),
    Product(
      id: '45',
      category: 'Igre',
      name: 'UNO',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 300,
    ),
    Product(
      id: '46',
      category: 'Igre',
      name: 'UNO spin',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 1200,
    ),
    Product(
      id: '47',
      category: 'Igre',
      name: 'Kapital',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 900,
    ),
    Product(
      id: '48',
      category: 'Alkohol',
      name: 'Tekila',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 1400,
    ),
    Product(
      id: '49',
      category: 'Alkohol',
      name: 'Stella',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 110,
    ),
    Product(
      id: '50',
      category: 'Alkohol',
      name: 'Jelen',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 60,
    ),
    Product(
      id: '51',
      category: 'Alkohol',
      name: 'Lav',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 60,
    ),
    Product(
      id: '52',
      category: 'Alkohol',
      name: 'Rose',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 400,
    ),
    Product(
      id: '53',
      category: 'Alkohol',
      name: 'Crveno vino',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 350,
    ),
    Product(
      id: '54',
      category: 'Alkohol',
      name: 'Belo vino',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 350,
    ),
    Product(
      id: '55',
      category: 'Dekoracija',
      name: 'Case',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 250,
    ),
    Product(
      id: '56',
      category: 'Alkohol',
      name: 'Vinjak',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yEzidFDDiU2jO81xe-DZVuq_SUiZSNp4Dg&usqp=CAU+',
      price: 1000,
    ),
    Product(
      id: '57',
      category: 'Sokovi',
      name: 'Kisela voda',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIyL1dpP4SDqZG8_ffBJ8ucy0x1mrF6ALUzA&usqp=CAU',
      price: 45,
    ),
    Product(
      id: '58',
      category: 'Nargila',
      name: 'Kafa',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 500,
    ),
    Product(
      id: '59',
      category: 'Nargila',
      name: 'Kafa',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 500,
    ),
    Product(
      id: '60',
      category: 'Nargila',
      name: 'Kafa',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 500,
    ),
    Product(
      id: '61',
      category: 'Nargila',
      name: 'Aparatura',
      imgUrl: 'https://nargilashopbeograd.rs/wp-content/uploads/mint-1-1.jpg',
      price: 500,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
}
