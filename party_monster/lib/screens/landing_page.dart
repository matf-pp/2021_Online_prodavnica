//Ovo je ono sto se pojavi kad pokrenemo aplikaciju
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:party_monster/screens/drawerScreen.dart';
import 'package:party_monster/screens/home_page.dart';

class LandingPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        //If snapshot has error
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: &{snapshot.error}"),
            ),
          );
        }
        //Firebase app is running :)
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: Stack(children: [DrawerScreen(), HomePage()]),
          ); //Ovde zadajemo sta ce se prikazati kad se aplikacija pokrene
        }
        //Firebase app is loadig...
        return Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                    Colors.blue.shade900,
                    Colors.red.shade900
                  ])),
              child: Center(
                  child: const SpinKitFadingGrid(
                //Ovo je loading animacija
                color: Colors.purple,
                shape: BoxShape.rectangle,
              ))),
        );
      },
    );
  }
}
