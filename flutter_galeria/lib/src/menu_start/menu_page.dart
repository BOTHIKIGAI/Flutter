import 'package:flutter/material.dart';
import 'package:flutter_galeria/src/utils/my_colors.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildGridItem(context, 'Jef Raskin 🖥️', 'assets/img/JefRaskin.jpg', '/galeriaJef'),
          _buildGridItem(
              context, 'Leonardo da Vinci 🎨', 'assets/img/LeonardodaVinci.jpg', '/galeriaLeonardoDavinci'),
          _buildGridItem(context, 'Linus Torvalds 🐧', 'assets/img/LinusTorvalds.jpg', '/galeriaLinus'),
          _buildGridItem(context, 'Sam Altman 🧠', 'assets/img/SamAltman.jpg', '/galeriaSamAltam'),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, String imagePath, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
