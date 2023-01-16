import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../user/models/product_model.dart';
import '../cart_provider/provider.dart';

class TotalProvider extends ChangeNotifier {
  double _total = 0;
  double get total => _total;

  updateTotal(double newTotal){
    _total = newTotal;
    notifyListeners();
  }

}
