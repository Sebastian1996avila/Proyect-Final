import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return Image.asset('assets/gallery/llama${index + 1}.jpg'); // Asumiendo que las imágenes están nombradas como llama1.jpg, llama2.jpg, etc.
        },
        itemCount: 6, // Ajusta este número según la cantidad de imágenes que tengas
      ),
    );
  }
}
