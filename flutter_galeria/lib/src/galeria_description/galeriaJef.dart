import 'package:flutter/material.dart';

class GaleriaJef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jef Raskin 🖥️'),
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
                  'assets/img/JefRaskin.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Jef Raskin (1943-2005) fue un informático, escritor y humanista estadounidense, reconocido por su contribución al diseño de interfaces de usuario. Aunque no fue uno de los fundadores de Apple, desempeñó un papel fundamental en los primeros días de la empresa. Raskin inició el proyecto Macintosh en Apple, que posteriormente llevó al desarrollo de la línea de computadoras Macintosh, conocida por su enfoque innovador en la interfaz gráfica de usuario.',
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
