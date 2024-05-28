import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'gallery_page.dart';
import 'facts_page.dart'; // Asegúrate de importar correctamente la página de hechos

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LlamaParadise',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/home', // Ruta inicial de la aplicación
      routes: {
        '/home': (context) => LoginPage(), // Cambiado a LoginPage como página de inicio
        '/gallery': (context) => GalleryPage(),
        '/facts': (context) => FactsPage(), 
        '/home_page': (context) => HomePage()
      },
    );
  }
}
