import 'package:flutter/foundation.dart';

class CartModel extends ChangeNotifier {
  final List<String> _items = [];
  final Map<String, double> _itemPrices = {
    'Llama Cobaya de las Montañas': 800.0 ,
    'Llama Americana': 1000.0,
    'Llama Andina Real': 1200.0,
    'Llama Patagonica': 950.0,
  };

  List<String> get items => _items;

  void add(String item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(String item) {
    _items.remove(item);
    notifyListeners();
  }

  double get totalPrice => _items.fold(0, (total, item) => total + (_itemPrices[item] ?? 0));
}
