import 'package:flutter/material.dart';

class GaleriaLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linus Torvalds 🐧'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              width: 500,  // Modifica el ancho según tus necesidades
              height: 500,  // Modifica la altura según tus necesidades
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), // Ajusta el radio según tus preferencias
                child: Image.asset(
                  'assets/img/LinusTorvalds.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Linus Torvalds es un ingeniero de software finlandés y el creador del kernel de Linux, un sistema operativo de código abierto. Aquí tienes una breve descripción: Linus Torvalds, nacido en Helsinki, Finlandia, en 1969, es conocido como el "rey del open source" y el arquitecto principal del kernel de Linux. En 1991, mientras estudiaba en la Universidad de Helsinki, Torvalds lanzó el proyecto Linux, un sistema operativo basado en UNIX que se ha convertido en un pilar fundamental del movimiento de código abierto. Su enfoque colaborativo y su decisión de compartir el código fuente de Linux permitieron que la comunidad global de desarrolladores contribuyera y mejorara continuamente el sistema operativo. Esta filosofía de código abierto ha influido en la forma en que se desarrollan y distribuyen muchos proyectos de software en la actualidad.',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Atrás'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}