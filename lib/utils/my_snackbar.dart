import 'package:flutter/material.dart';

class MySnackbar {
  static void show(BuildContext context, String? text) {
    if (context == null) return;

    FocusScope.of(context).requestFocus(new FocusNode());

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: Text(
        (text != null) ? text : '',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.red,
      duration: Duration(seconds: 3),
    ));
  }

  static void error(
    BuildContext context,
    String? text,
  ) {
    if (context == null) return;
    FocusScope.of(context).requestFocus(new FocusNode());

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: Text(
        "mensaje : $text",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
      backgroundColor: Colors.black12,
      duration: Duration(seconds: 3),
    ));
  }
}
