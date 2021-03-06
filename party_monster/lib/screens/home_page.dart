//Ovo je Home Page

import 'package:flutter/material.dart';
import 'package:party_monster/screens/deca_page.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:party_monster/screens/odrasli_page.dart';
import 'package:party_monster/screens/o_nama_page.dart';
import '../models/cart.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false; //Da li je otvoren side meni
  Color colorText = Colors.white;
  Color nightColor1 = Colors.blue.shade900;
  Color nightColor2 = Colors.red.shade900;
  Color color1 = Colors.blue.shade900;
  Color color2 = Colors.red.shade900;

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: ClipRRect(
        //Ovo sluzi da se zaoble ivice glavnom ekranu kad se otvori drawer
        borderRadius: BorderRadius.circular(isDrawerOpen ? 50.0 : 0.0),
        child: Scaffold(
          appBar: AppBar(
            leading: isDrawerOpen
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: colorText,
                    ),
                    onPressed: () {
                      setState(() {
                        xOffset = 0;
                        yOffset = 0;
                        scaleFactor = 1;
                        isDrawerOpen = false;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: colorText,
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        xOffset = 230;
                        yOffset = 159;
                        scaleFactor = 0.7;
                        isDrawerOpen = true;
                      });
                    },
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
            ],
            centerTitle: true,
            title: Text(
              'PartyMonster',
              style: TextStyle(color: colorText),
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[color1, color2])),
            ),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                child: Column(
                  children: [
                    //Dugme Odrasli
                    Container(
                      child: TextButton(
                        style:
                            TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OdrasliPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/home_page/adultsParty.jpeg',
                          fit: BoxFit.cover,
                          height: 380,
                        ),
                      ),
                    ),
                    //Dugme Deca
                    Container(
                      child: TextButton(
                        style:
                            TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DecaPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/home_page/kidsParty.jpeg',
                          fit: BoxFit.cover,
                          height: 380,
                        ),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        style:
                            TextButton.styleFrom(padding: EdgeInsets.all(0.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ONamaPage()),
                          );
                        },
                        child: Image.asset(
                          'assets/home_page/izdvojenoIzPonude.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
