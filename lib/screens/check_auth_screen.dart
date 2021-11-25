import 'package:app_delivery_redvital/screens/screens.dart';
import 'package:app_delivery_redvital/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final autService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: Container(
        child: Center(
            child: FutureBuilder(
          future: autService.readToken(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (!snapshot.hasData) return Text('espere');

            if (snapshot.data == '') {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => LoginScreens(),
                        transitionDuration: Duration(seconds: 0)));
              });
            } else {
              Future.microtask(() {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => HomeScreens(),
                        transitionDuration: Duration(seconds: 0)));
              });
            }

            return Container();
          },
        )),
      ),
    );
  }
}
