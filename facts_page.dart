import 'package:flutter/material.dart';

class FactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Llamas for sale '),
        backgroundColor: Color.fromRGBO(255, 235, 59, 1),
        toolbarHeight: 100,
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
                    String productPrice = '800 USD';
                    int price = int.tryParse(productPrice.split(' ')[0]) ?? 0;
                    print(price); // Esto imprimirá 800
                    // Puedes usar 'price' para la lógica del carrito
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
                    String productPrice = '1000 USD';
                    int price = int.tryParse(productPrice.split(' ')[0]) ?? 0;
                    print(price); // Esto imprimirá 1000
                    // Puedes usar 'price' para la lógica del carrito
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
