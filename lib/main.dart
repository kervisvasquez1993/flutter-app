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
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => OrderService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'checking',
        routes: {
          'login': (_) => LoginScreens(),
          'home': (_) => HomeScreens(),
          'checking': (_) => CheckAuthScreen(),
          'show': (_) => ShowPage(),
          'setting_screen': (_) => SettingScreen()
        },
        scaffoldMessengerKey: NotificationService.messageKey,
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.grey[300],
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: Colors.indigo,
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.indigo,
              elevation: 0,
            )),
      ),
    );
  }
}
// aplicacion de prueba