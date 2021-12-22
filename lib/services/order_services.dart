import 'package:app_delivery_redvital/models/order_model.dart';
import 'package:flutter/material.dart';

class OrderService extends ChangeNotifier {
  final String _baseUrl = 'redvital-delivery-manager.herokuapp.com';
  final List<Order> orders = [];

  // TODO: HACER EL FETCH DE NUETRAS ORDENES
}
