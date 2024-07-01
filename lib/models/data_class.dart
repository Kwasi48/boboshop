import 'package:boboshop/models/products.dart';
import 'package:flutter/cupertino.dart';

class DataClass extends ChangeNotifier{
  final List<Product> _checkoutList = [];
  List<Product> get checkoutList => _checkoutList;

//checkout(this.checkoutList);

  void addProduct(Product pro) {
    checkoutList.add(pro);
    print('added');
  notifyListeners();}

  void deleteProduct(Product pro){
    checkoutList.remove(pro);
    notifyListeners();
  }

}