// lib/content.dart
// on importe le matériel ui
import 'package:flutter/material.dart';
// on appelle les écrans
import 'screen/home.dart';
import 'screen/liste.dart';
import 'screen/truck.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State createState() => _ContentState();
}

class _ContentState extends State<Content> {
  // on met nos écran dans une liste pour pouvoir avooir l'écran 1 si on clicque sur le button 1
  final List<Widget> _screenList = const [Home(), Liste(), Truck()];
  int _currentScreen = 0;

  // on créer un build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.from(
          alpha: 1,
          red: 17,
          green: 34,
          blue: 54,
        ),
        title: const Text("Ceci est une app"),
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        // Les options
        type: BottomNavigationBarType.fixed,
        iconSize: 34,
        selectedItemColor: const Color.from(
          alpha: 1,
          red: 1,
          green: 0.757,
          blue: 0.027,
        ),
        unselectedItemColor: Colors.black,
        currentIndex: _currentScreen,
        onTap: (index) {
          setState(() {
            _currentScreen = index;
          });
        },
        // Les icones
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Liste'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Truck'),
        ],
      ),
    );
  }
}
