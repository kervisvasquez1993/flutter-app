import 'dart:io';
import 'dart:convert' as convert;

import 'package:app_delivery_redvital/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OrderService extends ChangeNotifier {
  final String _url_base = 'redvital-delivery-manager.herokuapp.com';
  final List<Order> orders = [];

  // TODO: HACER EL FETCH DE NUETRAS ORDENES
  Future ordenes(token) async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = Uri.https(_url_base, '/orders');
    print("token");
    print(token);

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url, headers: {
      HttpHeaders.authorizationHeader: "bearer ${token}",
      HttpHeaders.contentTypeHeader: "application/json"
    });

    print('Request failed with status: ${response.body}.');
  }
}
