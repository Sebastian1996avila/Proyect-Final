import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';

class FactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Llamas for Sale'),
        backgroundColor: Colors.yellow[700],
        toolbarHeight: 100,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 40,
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              ProductCard(
                icon: Icons.api,
                iconColor: Colors.orange,
                title: 'Llama Cobaya de las Montañas',
                price: '800 USD',
                onPressed: () {
                  context.read<CartModel>().add('Llama Cobaya de las Montañas - 800 USD');
                },
              ),
              SizedBox(height: 20),
              ProductCard(
                icon: Icons.api,
                iconColor: Colors.green,
                title: 'Llama Americana',
                price: '1000 USD',
                onPressed: () {
                  context.read<CartModel>().add('Llama Americana - 1000 USD');
                },
              ),
              SizedBox(height: 20),
              ProductCard(
                icon: Icons.api,
                iconColor: Colors.blue,
                title: 'Llama Andina Real',
                price: '1200 USD',
                onPressed: () {
                  context.read<CartModel>().add('Llama Andina Real - 1200 USD');
                },
              ),
              SizedBox(height: 20),
              ProductCard(
                icon: Icons.api,
                iconColor: Colors.purple,
                title: 'Llama Patagónica',
                price: '950 USD',
                onPressed: () {
                  context.read<CartModel>().add('Llama Patagónica - 950 USD');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String price;
  final VoidCallback onPressed;

  ProductCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Icon(icon, size: 30, color: iconColor),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Descripción breve del producto que ofrece más detalles sobre la llama y sus características.',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text('Añadir al carrito'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
