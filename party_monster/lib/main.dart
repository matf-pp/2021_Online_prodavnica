import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party_monster/models/cart.dart';
import 'package:party_monster/models/orders.dart';
import 'package:party_monster/models/products.dart';
import 'package:party_monster/screens/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Ovaj vidget je osnova nase aplikacije.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
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
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: LandingPage(),
      ),
    );
  }
}
