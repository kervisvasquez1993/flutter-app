import 'dart:convert';

class Order {
  Order({
    required this.id,
    required this.storeId,
    required this.deliveryTime,
    required this.status,
    required this.distanceTraveled,
    required this.deliveredAt,
    required this.deliveryImage,
    required this.wcOrderId,
    required this.wcCreatedAt,
    required this.courierUserId,
    required this.statusUpdatedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int storeId;
  DateTime deliveryTime;
  String status;
  String distanceTraveled;
  dynamic deliveredAt;
  dynamic deliveryImage;
  dynamic wcOrderId;
  dynamic wcCreatedAt;
  dynamic courierUserId;
  DateTime statusUpdatedAt;
  DateTime createdAt;
  DateTime updatedAt;

  factory Order.fromJson(String str) => Order.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Order.fromMap(Map<String, dynamic> json) => Order(
        id: json["id"],
        storeId: json["storeId"],
        deliveryTime: DateTime.parse(json["deliveryTime"]),
        status: json["status"],
        distanceTraveled: json["distanceTraveled"],
        deliveredAt: json["deliveredAt"],
        deliveryImage: json["deliveryImage"],
        wcOrderId: json["wcOrderId"],
        wcCreatedAt: json["wcCreatedAt"],
        courierUserId: json["courierUserId"],
        statusUpdatedAt: DateTime.parse(json["statusUpdatedAt"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "storeId": storeId,
        "deliveryTime": deliveryTime.toIso8601String(),
        "status": status,
        "distanceTraveled": distanceTraveled,
        "deliveredAt": deliveredAt,
        "deliveryImage": deliveryImage,
        "wcOrderId": wcOrderId,
        "wcCreatedAt": wcCreatedAt,
        "courierUserId": courierUserId,
        "statusUpdatedAt": statusUpdatedAt.toIso8601String(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
