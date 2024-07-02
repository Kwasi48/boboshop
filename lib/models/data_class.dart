import 'package:boboshop/models/products.dart';
import 'package:flutter/cupertino.dart';

class DataClass extends ChangeNotifier{
  final List<Product> _checkoutList = [];
  List<Product> get checkoutList => _checkoutList;

//checkout(this.checkoutList);

  void addProduct(Product pro) {
    checkoutList.add(pro);
    //print('added');
  notifyListeners();}

  void deleteProduct(int index){
    checkoutList.removeAt(index);
    //print('car');
    notifyListeners();
  }

  void deleteProduct1(Product pro){
    checkoutList.remove(pro);
    //print('car');
    notifyListeners();
  }
  void nextPage(BuildContext context){
    Navigator.pop(context);
  }

}