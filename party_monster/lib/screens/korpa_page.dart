//Ovo je Korpa page

import 'package:flutter/material.dart';
import 'package:party_monster/models/cart.dart';
import 'package:party_monster/models/orders.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class KorpaPage extends StatefulWidget {
  @override
  _KorpaPageState createState() => _KorpaPageState();
}

class _KorpaPageState extends State<KorpaPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController adressecontroller = TextEditingController();
    final cart = Provider.of<Cart>(context);
    final double price = cart.totalAmount;
    double total = 0.0;
    if (price > 0 && price < 3000) {
      total = price + 200.0;
    } else {
      total = price;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Moja korpa',
          style: TextStyle(fontSize: 20),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.blue.shade900, Colors.red.shade900])),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, i) => CartProduct(
                    cart.items.values.toList()[i].id,
                    cart.items.keys.toList()[i],
                    cart.items.values.toList()[i].price,
                    cart.items.values.toList()[i].quantity,
                    cart.items.values.toList()[i].name)),
          ),
          Container(
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ime i prezime:',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: adressecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adresa i mesto:',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
                'Dostava za celu Srbiju iznosi 200.0 rsd.\nZa porudžbine preko 3000.0 rsd dostava je besplatna. \nVaš račun je $total rsd.'),
          ),
          Container(
            height: 50.0,
            margin: EdgeInsets.all(10.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: cart.totalAmount <= 0.0
                  ? null
                  : () async {
                      String name = namecontroller.text;
                      String adresse = adressecontroller.text;
                      String tekst =
                          "<h1>Porudžbina</h1>\n<p><b>Ime i prezime: </b> " +
                              name +
                              "</p><p><b>Adresa: </b>" +
                              adresse +
                              "</p><p><b>Poručeni proizvodi:</b></p><p>";

                      cart.items.values.toList().forEach((element) => tekst =
                          tekst +
                              element.quantity.toString() +
                              'X ' +
                              element.name +
                              '</p><p>');
                      tekst = tekst +
                          'Ukupno za uplatu: <b>' +
                          (cart.totalAmount).toString() +
                          '</b></p>';
                      sendMail(tekst);
                      namecontroller.clear();
                      adressecontroller.clear();

                      await Provider.of<Orders>(context, listen: false)
                          .addOrder(cart.items.values.toList(),
                              cart.totalAmount, name, adresse);

                      cart.clear();
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
                  constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "PORUČI",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
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
      ..subject = 'Imate novu porudzbinu na PartyMonster'
      ..text = 'Porudzbina'
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
}
