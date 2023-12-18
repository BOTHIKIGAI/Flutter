import 'package:flutter/material.dart';

class GaleriaSamAltam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sam Altman 🧠'),
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
                  'assets/img/SamAltman.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sam Altman es conocido por su papel como presidente de OpenAI, una empresa de inteligencia artificial fundada con el objetivo de desarrollar IA de manera segura y beneficiosa para la humanidad. Antes de unirse a OpenAI, Altman fue presidente de Y Combinator, una conocida aceleradora de startups con la que ha estado involucrado durante varios años. Además de su trabajo en OpenAI y Y Combinator, Sam Altman ha sido emprendedor y cofundador de varias startups, incluida Loopt, una red social basada en la ubicación, que fue adquirida por Green Dot Corporation. Altman también ha sido inversor en numerosas empresas tecnológicas emergentes.',
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