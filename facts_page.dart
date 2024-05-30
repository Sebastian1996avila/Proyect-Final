import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';

class FactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Llamas for sale'),
        backgroundColor: Color.fromRGBO(255, 235, 59, 1),
        toolbarHeight: 100,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
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
              ListTile(
                leading: Icon(Icons.api, size: 30, color: Colors.orange),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'LLama Cobaya de las Montañas',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '800 USD',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    context.read<CartModel>().add('LLama Cobaya de las Montañas - 800 USD');
                  },
                  child: Text('Añadir al carrito'),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.api, size: 30, color: Colors.green),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'LLama Americana',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      '1000 USD',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    context.read<CartModel>().add('LLama Americana - 1000 USD');
                  },
                  child: Text('Añadir al carrito'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
