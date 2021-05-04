import 'package:flutter/material.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../cart.dart';
import 'package:badges/badges.dart';

class ONamaPage extends StatefulWidget {
  @override
  _ONamaPageState createState() => _ONamaPageState();
}

class _ONamaPageState extends State<ONamaPage> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('O nama'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Colors.blue.shade900,
                  Colors.red.shade900
                ])),
          ),
          actions: <Widget>[
            Badge(
              badgeContent: Text('$pdtnumber',
                  style: TextStyle(color: Colors.white, fontSize: 10)),
              toAnimate: false,
              position: BadgePosition.topEnd(top: 3, end: 3),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KorpaPage()),
                  );
                },
              ),
            ),
          ]),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
              ' Učiniti momenat nezaboravnim je glavna misija Party Booster-a! Bilo da je Vaš pas napunio tri godine… ili da izgovarate sudbonosno „da“… a možda slavite stoti rođendan Vaše bake …  Ako ste posvećeni roditelj, pa ipak niste „Pinjata majstor“ ..ili ono kad organizujete korporativnu proslavu a očekivanja su velika..  ili ste u poslednjem trenutku prihvatili poziv za maskenbal a hoćete da sve očarate – bez brige, tu smo mi!Naš tim kreativaca je Vaš verni saučesnik u planiranju dekoracije događaja koji se pamte. Ukoliko nemate vremena, mi smo tu za Vas. Ako su ideje i inspiracija presušile, naših ima u obilju! Proizvodi i usluge koje nudimo pokrivaju svaki segment proslave što je najbitnije, zar ne. Od rođendanske svećice ili ukrasnih slova od stiropora, preko širokog sprektra balona do ludih i unikatnih maski i kostima. Dakle, sve na jednom mestu! Iza nas je tradicija duga dvadeset godina. Zajedno sa Vama godinama investiramo u radost, sreću i čarobne momente! Verujemo da zajedno možemo da nastavimo da nižemo nisku nezaboravnih momenata i uspomena. Život je jedna velika žurka! ')),
    );
  }
}
