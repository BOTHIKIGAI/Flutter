import 'package:app_conection_apirest/providers/api_provider_user.dart';
import 'package:app_conection_apirest/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

String user = 'wilmersuperadmin@gmail.com';
String pass = 'wilmer1234';

final GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProviderUser(),
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
