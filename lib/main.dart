import 'package:flutter/material.dart';
import 'package:svemble_new/routes.dart';
import 'package:svemble_new/screens/Splash/splash_screen.dart';
import 'package:svemble_new/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Svemble - Интернет магазин!',
      theme: theme(),
      onGenerateRoute: AppRoute().onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}
