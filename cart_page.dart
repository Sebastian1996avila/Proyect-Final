import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(cart.items[index]),
          trailing: IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              cart.remove(cart.items[index]);
            },
          ),
        ),
      ),
    );
  }
}
