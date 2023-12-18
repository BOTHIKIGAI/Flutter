import 'package:flutter/material.dart';
import 'package:flutter_entregas/src/login/login_page.dart';
import 'package:flutter_entregas/src/register/register_page.dart'; // Importa la página de registro
import 'package:flutter_entregas/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion de domicilios',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(), // Agrega la ruta para la página de registro
      },

      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
      ),
    );
  }
}
