import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {@required this.id,
      @required this.amount,
      @required this.products,
      @required this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> addOrder(List<CartItem> cartProducts, double total, String name,
      String adresse) async {
    final url = Uri.parse(
        'https://partymonster-ksm-default-rtdb.europe-west1.firebasedatabase.app/orders.json');
    final timeSramp = DateTime.now();
    try {
      final response = await http.post(url,
          body: json.encode({
            'id': DateTime.now().toString(),
            'ime i prezime': name,
            'adresa i mesto': adresse,
            'iznos': total + 200.0,
            'vreme': timeSramp.toIso8601String(),
            'proizvodi': cartProducts
                .map((cp) => {
                      'id': cp.id,
                      'naziv': cp.name,
                      'kolicina': cp.quantity,
                      'cena': cp.price
                    })
                .toList()
          }));
      _orders.insert(
          0,
          OrderItem(
              id: json.decode(response.body)['name'],
              amount: total,
              products: cartProducts,
              dateTime: timeSramp));
      notifyListeners();
    } catch (err) {
      throw err;
    }
  }
}
