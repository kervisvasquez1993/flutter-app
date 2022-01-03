import 'dart:convert';

ResponseApi responseApiFromJson(String str) =>
    ResponseApi.fromJson(json.decode(str));

String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
  String? statusCode;
  String? error;
  bool? message;
  String? accessToken;

  ResponseApi({
    this.statusCode,
    this.error,
    this.message,
    this.accessToken,
  });

  ResponseApi.fromJson(Map<String, dynamic> json) {
    statusCode = json["statusCode"];
    error = json["error"];
    message = json["message"];
    accessToken = json["accessToken"];

    try {
      accessToken = json['accessToken'];
    } catch (e) {
      print('Exception data $e');
    }
  }

  Map<String, dynamic> toJson() => {
        "message": message,
        "error": error,
        "message": message,
        "accessToken": accessToken,
      };
}
