import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party_monster/cart.dart';
import 'package:party_monster/orders.dart';
import 'package:party_monster/product_deca.dart';
import 'package:party_monster/screens/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        // ChangeNotifierProvider.value(
        //   value: Product(),
        // ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // Ovaj vidget je osnova nase aplikacije.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LandingPage(),
    );
  }
}
