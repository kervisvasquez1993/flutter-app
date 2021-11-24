import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService with ChangeNotifier {
  final String _url_base = "redvital-delivery-manager.herokuapp.com";
  Future<String> loginUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(_url_base, '/auth/signin');

    final respuesta = await http.post(url, body: authData);
    print("desde auth service");
    print(jsonEncode(authData));
    final Map<String, dynamic> decodeResp = json.decode(respuesta.body);
    print(decodeResp);
    return "hola";
  }
}
