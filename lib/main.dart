import 'package:app_delivery_redvital/page/order/order_page.dart';
import 'package:app_delivery_redvital/page/screens/screens.dart';
import 'package:app_delivery_redvital/providers/providers.dart';

import 'package:app_delivery_redvital/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthService(),
        ),
        ChangeNotifierProvider(
          create: (_) => OrderProvider(),
        ),
      ],
      child: myApp(),
    );
  }
}

class myApp extends StatelessWidget {
  const myApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'ordenes',
      routes: {
        'login': (_) => LoginScreens(),
        'home': (_) => HomeScreens(),
        'checking': (_) => CheckAuthScreen(),
        'ordenes': (_) => OrderPage()
      },
      scaffoldMessengerKey: NotificationService.messageKey,
    );
  }
}
// aplicacion de prueba