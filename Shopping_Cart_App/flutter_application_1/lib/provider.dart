import 'package:flutter/material.dart';
import 'package:shopping_cart/model.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> cartItems = [];
  List<Product> get cartlist => cartItems;

  final List<Product> items = [
    Product(id: 1, name: 'Laptop', price: 100.0, quantity: 2),
    Product(id: 2, name: 'Keyboard', price: 30.0, quantity: 2),
    Product(id: 2, name: 'Computer', price: 150.0, quantity: 2),
  ];

  List<Product> get itemslist => items;

  void add(Product p) {
    cartItems.add(p);
    notifyListeners();
  }

  void remove(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  double calculateTotalCost() {
    double totalCost = 0.0;
    for (final product in items) {
      totalCost += (product.price * product.quantity);
    }
    return totalCost;
  }
}
