import 'package:flutter/material.dart';
import 'package:flutter_entregas/src/utils/my_colors.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Agregamos SingleChildScrollView aquí
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height * 0.21, // Disminución del 10%
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Volver a la página de login
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Text(
                          'Registro',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/registerUser.png',
                  width: 300.0,
                  height: 300.0,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            buildInput(context, 'Correo electrónico', Icons.email),
            SizedBox(height: 10.0),
            buildInput(context, 'Nombre', Icons.person),
            SizedBox(height: 10.0),
            buildInput(context, 'Apellido', Icons.person_outline),
            SizedBox(height: 10.0),
            buildInput(context, 'Teléfono', Icons.phone),
            SizedBox(height: 10.0),
            buildInput(context, 'Contraseña', Icons.lock),
            SizedBox(height: 10.0),
            buildInput(context, 'Confirmar Contraseña', Icons.lock_outline),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Acción a realizar al presionar el botón
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: Size(MediaQuery.of(context).size.width * 0.30 * 1.3, 60.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Registrarse',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInput(BuildContext context, String hintText, IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        obscureText: hintText.contains('Contraseña'),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.red),
          icon: Icon(icon, color: Colors.red),
          border: InputBorder.none,
        ),
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
