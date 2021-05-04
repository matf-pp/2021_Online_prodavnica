import 'package:flutter/material.dart';
import 'package:party_monster/screens/korpa_page.dart';
import 'package:provider/provider.dart';
import '../cart.dart';
import 'package:badges/badges.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class PitanjaPage extends StatefulWidget {
  @override
  _PitanjaPageState createState() => _PitanjaPageState();
}

class _PitanjaPageState extends State<PitanjaPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController questioncontroller = TextEditingController();
    final cart = Provider.of<Cart>(context);
    int pdtnumber = cart.brojac;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Pitanja'),
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
      body: SafeArea(
          child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.red.shade900,
                ),
                title: Text('Da li vršite dostavu i van Beograda?'),
                subtitle:
                    Text('Da, dostavu vršimo na teritoriji cele Srbije.')),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.red.shade900,
              ),
              title: Text('Koja je cena dostave?'),
              subtitle: Text(
                  'Dostava iznosi 200.0 rsd. Za sve porudžbine preko 3000.0 rsd dostava je besplatna.'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.red.shade900,
              ),
              title: Text('Koji je rok isporuke?'),
              subtitle: Text(
                  'Porudžbinu mozete očekivati na svojoj adresi u roku od 48 sati.'),
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 50.0,
                  offset: Offset(0, -10), // Shadow position
                ),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 40.0,
                  offset: Offset(0, 40), // Shadow position
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email:',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextFormField(
                    controller: questioncontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pitanje:',
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  margin: EdgeInsets.all(10.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: cart.totalAmount <= 0.0
                        ? null
                        : () async {
                            String email = emailcontroller.text;
                            String question = questioncontroller.text;
                            String tekst =
                                "<h1>Porudzbina</h1>\n<p><b>Email: </b> " +
                                    email +
                                    "</p><p><b>Adresa: </b>" +
                                    question +
                                    "</p><p><b>Pitanje:</b></p><p>";
                            sendMail(tekst);
                            emailcontroller.clear();
                            questioncontroller.clear();
                          },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Colors.blue.shade900,
                                Colors.red.shade900
                              ]),
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: Text(
                          "POSALJI",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

sendMail(String tekst) async {
  String username = 'hsmpartymonster@gmail.com';
  String password = 'partymonsterhsm';

  // ignore: deprecated_member_use
  final smtpServer = gmail(username, password);
  final message = Message()
    ..from = Address(username)
    ..recipients.add('mildim999@gmail.com')
    ..recipients.add('Hristina.nik.pi@gmail.com')
    ..recipients.add('sarazivkovic99@gmail.com')
    ..subject = 'Imate novo pitanje na PartyMonster'
    ..text = 'Pitanje'
    ..html = tekst;

  try {
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());
  } on MailerException catch (e) {
    print('Message not sent.');
    for (var p in e.problems) {
      print('Problem: ${p.code}: ${p.msg}');
    }
  }
}
