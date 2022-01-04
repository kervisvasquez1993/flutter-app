import 'package:app_delivery_redvital/api/env.dart';
import 'package:app_delivery_redvital/models/response_api.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'dart:io';

class UsersProvider {
  String _url = Environment.API_DELIVERY;
  String _api = '/users';
  BuildContext? context;
  // User sessionUser;
  Future? init(BuildContext context) async {
    this.context = context;
  }

  Future<ResponseApi?> login(String email, String password) async {
    try {
      Uri url = Uri.http(_url, '/auth/signin');
      print("url $url");
      String bodyParams = json.encode({'email': email, 'password': password});
      Map<String, String> headers = {'Content-type': 'application/json'};
      final res = await http.post(url, headers: headers, body: bodyParams);
      final data = json.decode(res.body);
      ResponseApi responseApi = ResponseApi.fromJson(data);
      return responseApi;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
