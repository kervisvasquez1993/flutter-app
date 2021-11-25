import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService with ChangeNotifier {
  final String _url_base = "redvital-delivery-manager.herokuapp.com";
  // secure installation
  final storage = new FlutterSecureStorage();

  // login of user
  Future<String?> loginUser(String email, String password) async {
    final Map<String, dynamic> authData = {
      'email': email,
      'password': password
    };

    final url = Uri.https(_url_base, '/auth/signin');

    final respuesta = await http.post(url, body: authData);
    final Map<String, dynamic> decodeResp = json.decode(respuesta.body);
    if (decodeResp.containsKey('accessToken')) {
      await storage.write(key: 'token', value: decodeResp['accessToken']);
      // return decodeResp['accessToken'];
      return null;
    } else {
      final code = decodeResp['statusCode'];
      final String message = decodeResp['message'];

      return " status : ${code}, error : ${message}";
    }
  }

// logiut of users
  Future logout() async {
    await storage.delete(key: 'token');
    return;
  }

  // verificacion de token
  Future<String> readToken() async {
    return await storage.read(key: 'token') ?? '';
  }
}
