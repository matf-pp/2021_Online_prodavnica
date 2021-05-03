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
      price: 110,
    ),
    Product(
      id: '2',
      category: 'Sokovi',
      name: 'Sprite',
      imgUrl:
          'https://plitvicemarketi.rs/images/thumbs/0013902_sprite-1l_511.png',
      price: 130,
    ),
    Product(
      id: '3',
      category: 'Hrana',
      name: 'Čips',
      imgUrl:
          'https://plitvicemarketi.rs/images/thumbs/0013445_chipsy-classic-150g_511.png',
      price: 150,
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
      name: 'Nargila',
      imgUrl:
          'https://nargile.me/wp-content/uploads/2017/07/amy-deluxe-630d-08.jpg',
      price: 1200,
    ),
    Product(
      id: '10',
      category: 'Nargila',
      name: 'Cokolada',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008114.jpg',
      price: 500,
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
      imgUrl: 'https://probar.rs/wp-content/uploads/2019/09/fanta2l-scaled.jpg',
      price: 120,
    ),
    Product(
      id: '15',
      category: 'Nargila',
      name: 'Menta',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008102.jpg',
      price: 500,
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
          'https://cenoteka.rs/assets/images/articles/vocni-sok-next-classic-breskva-1l-1000480-large.jpg',
      price: 110,
    ),
    Product(
      id: '19',
      category: 'Sokovi',
      name: 'Pomorandza',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/vocni-sok-next-classic-pomorandza-1l-1000488-large.jpg',
      price: 110,
    ),
    Product(
      id: '20',
      category: 'Sokovi',
      name: 'Sumsko voce',
      imgUrl:
          'https://online.idea.rs/images/products/471/471103617_1l.jpg?1532949110',
      price: 110,
    ),
    Product(
      id: '21',
      category: 'Sokovi',
      name: 'Multivitamin',
      imgUrl:
          'https://paralelaplus.rs/wp-content/uploads/2020/05/Sok-multivitamin-Next-Classic-1l.png',
      price: 110,
    ),
    Product(
      id: '22',
      category: 'Sokovi',
      name: 'Jabuka',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/vocni-sok-next-jabuka-1-5l-1007999-large.jpg',
      price: 110,
    ),
    Product(
      id: '23',
      category: 'Hrana',
      name: 'TUC',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h41/h36/8830542413854.png',
      price: 80,
    ),
    Product(
      id: '24',
      category: 'Dekoracija',
      name: 'Baloni',
      imgUrl:
          'https://www.balonservis.rs/wp-content/uploads/2016/01/%C5%A0tampani-balon-vatromet.jpg',
      price: 90,
    ),
    Product(
      id: '25',
      category: 'Dekoracija',
      name: 'Svecice',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/he8/h71/8829756440606.png',
      price: 100,
    ),
    Product(
      id: '26',
      category: 'Dekoracija',
      name: 'Kapice',
      imgUrl:
          'https://www.balon-shop.com/wp-content/uploads/kapice-papirne-320x320.jpg',
      price: 230,
    ),
    Product(
      id: '27',
      category: 'Hrana',
      name: 'Mix',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h7f/h9f/8882746785822.jpg',
      price: 250,
    ),
    Product(
      id: '28',
      category: 'Hrana',
      name: 'Kikiriki',
      imgUrl:
          'https://funandfit.rs/uploads/pages/19-kikiriki-peceni-slani-2.png',
      price: 150,
    ),
    Product(
      id: '29',
      category: 'Hrana',
      name: 'Semenke',
      imgUrl:
          'https://online.idea.rs/images/products/106/106013554_1l.jpg?1607951746',
      price: 100,
    ),
    Product(
      id: '30',
      category: 'Hrana',
      name: 'Suncokret',
      imgUrl:
          'https://paralelaplus.rs/wp-content/uploads/2020/05/Suncokret-u-ljusciprzslani-Mogyi-60g.png',
      price: 100,
    ),
    Product(
      id: '31',
      category: 'Dekoracija',
      name: 'Trubice',
      imgUrl:
          'https://www.svetbalona.com/wp-content/uploads/2019/11/bele-trubice-sa-zlatnim-zvezdicama-01.jpg',
      price: 150,
    ),
    Product(
      id: '32',
      category: 'Dekoracija',
      name: 'Tanjirici',
      imgUrl:
          'https://lh3.googleusercontent.com/proxy/2LbGVHMZWITx5VUvwfVizKBx_bvwMsIUXZIAsI_myPKg5aX710eVcKawB1dU4e0spIP-3iIWiVC6hGo-gKoIUG_nMncWzaz7bPIhdp84iCc',
      price: 120,
    ),
    Product(
      id: '33',
      category: 'Dekoracija',
      name: 'Salvete',
      imgUrl: 'https://tropik.ba/wp-content/uploads/8434077071311-2161.jpg',
      price: 90,
    ),
    Product(
      id: '34',
      category: 'Nargila',
      name: 'Breskva',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008112.jpg',
      price: 500,
    ),
    Product(
      id: '35',
      category: 'Nargila',
      name: 'Jabuka',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008101.jpg',
      price: 500,
    ),
    Product(
      id: '36',
      category: 'Nargila',
      name: 'Malina',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008115.jpg',
      price: 500,
    ),
    Product(
      id: '37',
      category: 'Nargila',
      name: 'Dinja',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008105.jpg',
      price: 500,
    ),
    Product(
      id: '38',
      category: 'Nargila',
      name: 'Lubenica',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008144.jpg',
      price: 500,
    ),
    Product(
      id: '39',
      category: 'Igre',
      name: 'Ludo',
      imgUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81gb3h91pML._AC_SX679_.jpg',
      price: 500,
    ),
    Product(
      id: '40',
      category: 'Igre',
      name: 'Karte',
      imgUrl:
          'https://www.gadget4gift.com/wp-content/uploads/2018/proizvodi/karte-mini.jpg',
      price: 150,
    ),
    Product(
      id: '41',
      category: 'Igre',
      name: 'Tvist',
      imgUrl: 'https://www.oddoigracke.rs/proizvodi/6616/twist.jpg',
      price: 700,
    ),
    Product(
      id: '42',
      category: 'Igre',
      name: 'Monopol',
      imgUrl: 'https://cdn.alzashop.com/ImgW.ashx?fd=f16&cd=HRAbz02681',
      price: 1000,
    ),
    Product(
      id: '43',
      category: 'Igre',
      name: 'Yamb',
      imgUrl:
          'https://dijaspora.shop/media/catalog/product/cache/1/thumbnail/1000x1000/9df78eab33525d08d6e5fb8d27136e95/3/8/3859888377257-7264.jpg',
      price: 230,
    ),
    Product(
      id: '44',
      category: 'Igre',
      name: 'PS4/dan',
      imgUrl:
          'https://media.wired.com/photos/5a99f809b4bf6c3e4d405abc/1:1/w_960,h_960,c_limit/PS4-Pro-SOURCE-Sony.jpg',
      price: 1500,
    ),
    Product(
      id: '45',
      category: 'Igre',
      name: 'UNO',
      imgUrl: 'https://www.dexy.co.rs/files/images/slike_proizvoda/OW2085.jpg',
      price: 300,
    ),
    Product(
      id: '46',
      category: 'Igre',
      name: 'UNO spin',
      imgUrl: 'https://www.vrabac.co.rs/wp-content/uploads/2020/12/3157810.jpg',
      price: 1200,
    ),
    Product(
      id: '47',
      category: 'Igre',
      name: 'Kapital',
      imgUrl: 'https://trijumfkids.rs/wp-content/uploads/2020/11/7.png',
      price: 900,
    ),
    Product(
      id: '48',
      category: 'Alkohol',
      name: 'Tekila',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/tekila-agavita-blanco-700ml-1005597-large.jpg',
      price: 1400,
    ),
    Product(
      id: '49',
      category: 'Alkohol',
      name: 'Stella',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h61/h66/8879948627998.png',
      price: 110,
    ),
    Product(
      id: '50',
      category: 'Alkohol',
      name: 'Jelen',
      imgUrl:
          'https://www.ediskont.rs/uploads/store/products/images/jelen-pivo-05-u-limenci-u-paketu-od-24-komada-602fe10ddb475.jpg',
      price: 60,
    ),
    Product(
      id: '51',
      category: 'Alkohol',
      name: 'Lav',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h56/hfc/8843584798750.png',
      price: 60,
    ),
    Product(
      id: '52',
      category: 'Alkohol',
      name: 'Rose',
      imgUrl:
          'https://www.ediskont.rs/uploads/store/products/images/moje_vino_roze_plantaze_1l_549.jpg',
      price: 400,
    ),
    Product(
      id: '53',
      category: 'Alkohol',
      name: 'Crveno vino',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/crveno-vino-plantaze-moje-vino-1l-1005848-large.jpg',
      price: 350,
    ),
    Product(
      id: '54',
      category: 'Alkohol',
      name: 'Belo vino',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/belo-vino-plantaze-moje-vino-1l-1005847-large.jpg',
      price: 350,
    ),
    Product(
      id: '55',
      category: 'Dekoracija',
      name: 'Case',
      imgUrl:
          'https://cdn.shopify.com/s/files/1/1901/3435/products/9100cp-caspari-happy-birthday-paper-cups-8-per-package-4818964807727.jpg?v=1570140983',
      price: 250,
    ),
    Product(
      id: '56',
      category: 'Alkohol',
      name: 'Vinjak',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/vinjak-rubin-1l-1004379-medium.jpg',
      price: 1000,
    ),
    Product(
      id: '57',
      category: 'Sokovi',
      name: 'Kisela voda',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/gazirana-voda-knjaz-milos-1-75l-1000048-large.jpg',
      price: 45,
    ),
    Product(
      id: '58',
      category: 'Alkohol',
      name: 'Viski',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/viski-ballantines-kutija-0-7l-1004382-large.jpg',
      price: 1200,
    ),
    Product(
      id: '59',
      category: 'Nargila',
      name: 'Vanila',
      imgUrl:
          'https://umbrellashop.rs/media/catalog/product/cache/1/small_image/210x/9df78eab33525d08d6e5fb8d27136e95/0/0/008113.jpg',
      price: 500,
    ),
    Product(
      id: '60',
      category: 'Hrana',
      name: 'Ribice',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/ribice-bambi-ribice-jos-90g-1004856-large.jpg',
      price: 70,
    ),
    Product(
      id: '61',
      category: 'Hrana',
      name: 'Perece',
      imgUrl:
          'https://d3el976p2k4mvu.cloudfront.net/medias/sys_master/h38/hfd/8886492364830.png',
      price: 70,
    ),
    Product(
      id: '62',
      category: 'Hrana',
      name: 'Jaffa',
      imgUrl:
          'https://www.tablicakalorija.com/wp-content/uploads/2017/10/jaffa-keks-730x430.jpg',
      price: 80,
    ),
    Product(
      id: '63',
      category: 'Hrana',
      name: 'Noblice',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/biskvit-banini-noblice-125g-1000989-large.jpg',
      price: 85,
    ),
    Product(
      id: '64',
      category: 'Hrana',
      name: 'Tutku',
      imgUrl:
          'https://cenoteka.rs/assets/images/articles/keks-tutku-140g-1010492-large.jpg',
      price: 120,
    ),
    Product(
      id: '65',
      category: 'Alkohol',
      name: 'Šljiva',
      imgUrl:
          'https://www.kovoli.com/dev/wp-content/uploads/2017/05/rakija-sljiva-bogdanovic-686x686.jpg',
      price: 900,
    ),
    Product(
      id: '66',
      category: 'Hrana',
      name: 'Plazma',
      imgUrl:
          'https://www.ideaonline.me/images/products/440/440001188_1l.jpg?1554132047',
      price: 130,
    ),
    Product(
      id: '67',
      category: 'Alkohol',
      name: 'Dunja',
      imgUrl:
          'https://krstasica.com/wp-content/uploads/2016/12/dunja_rakija_krstasica_fruska-gora-700x700.jpg',
      price: 900,
    ),
    Product(
      id: '68',
      category: 'Alkohol',
      name: 'Vermut',
      imgUrl:
          'https://www.ediskont.rs/uploads/store/products/images/vermouth_beli_caldirola_1l_812.jpg',
      price: 850,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
}
