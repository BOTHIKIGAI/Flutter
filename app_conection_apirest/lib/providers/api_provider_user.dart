import 'package:app_conection_apirest/models/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiProviderUser with ChangeNotifier {
  final url = '7z4pkz1d-8080.use2.devtunnels.ms';
  List<User> user = [];

  // Functions

  // post credentials
  Future<void> loginUser() async {
 final response = await http.post(
    Uri.parse('https://7z4pkz1d-8080.use2.devtunnels.ms/api/v1/hermes/auth/user/login'),
    headers: {
      'Content-Type': 'application/json',
    },
    body: json.encode({
      "username": "wilmersuperadmin@gmail.com",
      "password": "wilmer1234",
    }),
 );

 if (response.statusCode == 200) {
    // Si la petición fue exitosa, puedes manejar la respuesta aquí
    print('Login exitoso');
    print(response.body);
 } else {
    // Maneja el error
    print('Error al iniciar sesión: ${response.statusCode}');
 }
}
}
