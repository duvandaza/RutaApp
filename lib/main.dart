import 'package:flutter/material.dart';
import 'package:ruta/src/page/inicio_page.dart';
import 'package:ruta/src/page/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruta App',
      routes: {
        'login' : (context) => const LoginPage(),
        'inicio' : (context) => const InicioPage(),
      },
      initialRoute: 'login',
    );
  }
}