import 'package:boboshop/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          child: cardItem1(Product(
              'cappuccino',
              Image(image: AssetImage('asset/cappuccino.jpg')),
              12,
              'Made with love from Italy')),
        )
      ],
    );
  }
}

Widget cardItem() {
  var newpro = Product(
      'affagato',
      const Image(
        image: AssetImage('asset/affogato.jpg'),
      ),
      12,
      'Super Tasty');
  return Card(
    child: Column(
      children: [
        Text(newpro.name),
        newpro.productImage,
        Text(newpro.description)
      ],
    ),
  );
}

Widget cardItem1(Product pro) {
  return Card(
    child: Column(
      children: [Text(pro.name), pro.productImage, Text(pro.description)],
    ),
  );
}
