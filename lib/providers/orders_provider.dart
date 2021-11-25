import 'package:app_delivery_redvital/models/orders_model.dart';
import 'package:app_delivery_redvital/services/OrderServices.dart';
import 'package:flutter/material.dart';

class OrderProvider extends ChangeNotifier {
  late List<OrderModel> orden;

  Future<List<OrderModel>> obtenerOrdenes() async {
    if (orden != null) {
      return orden;
    }

    var service = new OrderServices();
    this.orden = await service.orderAll();
    notifyListeners();
    return orden;
  }
}
