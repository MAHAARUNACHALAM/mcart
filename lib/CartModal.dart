import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mcart/Product.dart';

class CartModel extends ChangeNotifier {
  List<Product> _cart = [];

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
}
