import 'package:flutter/material.dart';
import 'package:flutter_galeria/src/menu_start/menu_page.dart';
import 'package:flutter_galeria/src/galeria_description/galeriaJef.dart'; // Asegúrate de importar todas las páginas específicas
import 'package:flutter_galeria/src/galeria_description/galeriaLeonardoDavinci.dart';
import 'package:flutter_galeria/src/galeria_description/galeriaLinus.dart';
import 'package:flutter_galeria/src/galeria_description/galeriaSamAltam.dart';
import 'package:flutter_galeria/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion de domicilios',
      debugShowCheckedModeBanner: false,
      initialRoute: 'menu_page',
      routes: {
        'menu_page': (BuildContext context) => MenuPage(),
        '/galeriaJef': (BuildContext context) => GaleriaJef(),
        // Agrega rutas para las otras páginas específicas
        '/galeriaLeonardoDavinci': (BuildContext context) => GaleriaLeonardoDavinci(),
        '/galeriaLinus': (BuildContext context) => GaleriaLines(),
        '/galeriaSamAltam': (BuildContext context) => GaleriaSamAltam(),
      },
      theme: ThemeData(primaryColor: MyColors.primaryColor),
    );
  }
}
