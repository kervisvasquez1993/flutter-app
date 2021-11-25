// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

List<OrderModel> orderFromJson(String str) =>
    List<OrderModel>.from(json.decode(str).map((x) => OrderModel.fromJson(x)));

String orderToJson(List<OrderModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderModel {
  OrderModel({
    required this.id,
    required this.storeId,
    required this.deliveryTime,
    required this.status,
    required this.distanceTraveled,
    this.deliveredAt,
    this.wcOrderId,
    this.wcCreatedAt,
    required this.statusUpdatedAt,
    required this.courierUserId,
  });

  int id;
  int storeId;
  DateTime deliveryTime;
  String status;
  String distanceTraveled;
  DateTime? deliveredAt;
  int? wcOrderId;
  DateTime? wcCreatedAt;
  DateTime statusUpdatedAt;
  int courierUserId;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        storeId: json["storeId"],
        deliveryTime: DateTime.parse(json["deliveryTime"]),
        status: json["status"],
        distanceTraveled: json["distanceTraveled"],
        deliveredAt: json["deliveredAt"],
        wcOrderId: json["wcOrderId"],
        wcCreatedAt: json["wcCreatedAt"],
        statusUpdatedAt: DateTime.parse(json["statusUpdatedAt"]),
        courierUserId: json["courierUserId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "storeId": storeId,
        "deliveryTime": deliveryTime.toIso8601String(),
        "status": status,
        "distanceTraveled": distanceTraveled,
        "deliveredAt": deliveredAt,
        "wcOrderId": wcOrderId,
        "wcCreatedAt": wcCreatedAt,
        "statusUpdatedAt": statusUpdatedAt.toIso8601String(),
        "courierUserId": courierUserId,
      };
}
