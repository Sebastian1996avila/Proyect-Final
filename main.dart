import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'gallery_model.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'gallery_page.dart';
import 'facts_page.dart';
import 'cart_model.dart';
import 'cart_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
       // ChangeNotifierProvider(create: (context) => GalleryModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LlamaParadise',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/home', 
      routes: {
        '/home': (context) => LoginPage(),
        '/gallery': (context) => GalleryPage(),
        '/facts': (context) => FactsPage(),
        '/home_page': (context) => HomePage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
