import 'package:flutter/material.dart';

class GaleriaLeonardoDavinci extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leonardo da Vinci 🎨'),
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
                  'assets/img/LeonardodaVinci.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Leonardo da Vinci (1452-1519) fue un polímata renacentista italiano, considerado uno de los genios más destacados de la historia de la humanidad. Su legado abarca una amplia gama de disciplinas, y su capacidad para integrar arte y ciencia lo distingue como uno de los ilustres ingenieros de la historia. Como ingeniero, Leonardo diseñó innovadoras máquinas y dispositivos, desde máquinas voladoras hasta puentes y sistemas hidráulicos. Sus cuadernos están llenos de esbozos detallados de inventos, y muchos de sus conceptos visionarios fueron adelantados a su tiempo. Leonardo también se destacó en el estudio de la anatomía, desafiando las creencias de su época. Sus detallados dibujos anatómicos muestran una comprensión profunda de la estructura y función del cuerpo humano.',
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
