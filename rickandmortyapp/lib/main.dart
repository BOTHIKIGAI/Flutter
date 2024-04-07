import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:rickandmortyapp/models/character_model.dart';
import 'package:rickandmortyapp/providers/api_provider.dart';
import 'package:rickandmortyapp/screens/character_screen.dart';
import 'package:rickandmortyapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: 'character',
          builder: (context, state) {
            final character = state.extra as Character;
            return CharacterScreen(
              character: character,
            );
          },
        )
      ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProvider(),
      child: MaterialApp.router(
          title: 'Rick and Mory App', // titulo de la app en el head
          debugShowCheckedModeBanner: false, // Quitar la etiqueta de debug
          theme: ThemeData(
            // Tema de la app
            brightness: Brightness.dark, // Tema oscuro
            useMaterial3: true, // Uso de la libreria material 3
          ),
          routerConfig:
              _router // Redireccionamiento de la app, al momento de ingresar enviara al usuario a la screen home_screen
          ),
    );
  }
}

// Estructura de carpetas del proyecto
