import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:party_monster/product.dart';
import 'package:party_monster/screens/landing_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        )
      ],
      child: MaterialApp(
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
