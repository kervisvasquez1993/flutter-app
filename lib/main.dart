import 'package:app_delivery_redvital/screens/screens.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'checking',
        routes: {
          'login': (_) => LoginScreens(),
          'home': (_) => HomeScreens(),
          'checking': (_) => CheckAuthScreen()
        },
        scaffoldMessengerKey: NotificationService.messageKey,
      ),
    );
  }
}
// aplicacion de prueba