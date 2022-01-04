import 'package:app_delivery_redvital/models/response_api.dart';

import 'package:app_delivery_redvital/providers/user_provider.dart';
import 'package:app_delivery_redvital/utils/my_snackbar.dart';
import 'package:flutter/material.dart';

class LoginController {
  late BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();
  // PushNotificationsProvider pushNotificationsProvider =
  //     new PushNotificationsProvider();
  // SharedPref _sharedPref = new SharedPref();

  Future init(BuildContext context) async {
    this.context = context;
    await usersProvider.init(context);

    // User user = User.fromJson(await _sharedPref.read('user') ?? {});

    // print('Usuario: ${user.toJson()}');

    // if (user?.sessionToken != null) {
    //   if (user.roles.length > 1) {
    //     Navigator.pushNamedAndRemoveUntil(context, 'roles', (route) => false);
    //   } else {
    //     Navigator.pushNamedAndRemoveUntil(
    //         context, user.roles[0].route, (route) => false);
    //   }
    // }
  }

  login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    ResponseApi? responseApi = await usersProvider.login(email, password);
    if (responseApi!.accessToken != null) {
      print('respuesta : ${responseApi.toJson()}');
      MySnackbar.show(context, responseApi.accessToken);
    } else {
      MySnackbar.error(context, responseApi.message);
    }
  }
}
