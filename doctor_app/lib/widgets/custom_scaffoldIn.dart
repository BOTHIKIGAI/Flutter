import 'package:flutter/material.dart';

class CustomScaffoldIn extends StatelessWidget {
  const CustomScaffoldIn({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bg1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.indigo,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/home_icon.png')),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/stethoscope_icon.png')),
          label: 'Stethoscope',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/search_icon.png')),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/news_icon.png')),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/user_icon.png')),
          label: 'User',
        ),
      ],
    );
  }
}
