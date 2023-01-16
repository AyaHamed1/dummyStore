import 'package:dummy_store/general/providers/total_provider/provider.dart';
import 'package:flutter/material.dart';
import '../../../user/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  void updateCart(List<ProductModel> list) {
    _products = list;
    notifyListeners();
  }

  void removeFromCart(int index){
    _products.removeAt(index);
    notifyListeners();
  }

}
