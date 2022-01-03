import 'dart:convert';

class User {
  int id;
  String? email;
  double? randomValue;
  String? name;
  String? phone;
  String? identityId;

  String? role;
  dynamic? profileImage;
  int? storeId;
  bool? isRetired;
  bool? isActive;

  User({
    required this.id,
    this.email,
    this.randomValue,
    this.name,
    this.phone,
    this.identityId,
    this.role,
    this.profileImage,
    this.storeId,
    this.isRetired,
    this.isActive,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        randomValue: json["randomValue"].toDouble(),
        name: json["name"],
        phone: json["phone"],
        identityId: json["identityId"],
        role: json["role"],
        profileImage: json["profileImage"],
        storeId: json["storeId"],
        isRetired: json["isRetired"],
        isActive: json["isActive"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "email": email,
        "randomValue": randomValue,
        "name": name,
        "phone": phone,
        "identityId": identityId,
        "role": role,
        "profileImage": profileImage,
        "storeId": storeId,
        "isRetired": isRetired,
        "isActive": isActive,
      };
}
