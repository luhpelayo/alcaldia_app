import 'package:alcaldia_app/vistas/login_screen.dart';
import 'package:alcaldia_app/vistas/registrar_page.dart';
import 'package:flutter/material.dart';
void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),

      },
    );
  }
}