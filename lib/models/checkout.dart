import 'package:boboshop/models/products.dart';

class checkout {
  List<Product> checkoutList = [];

//checkout(this.checkoutList);

  void addProduct(Product pro) {
    checkoutList.add(pro);
    print('added');
  }
}
