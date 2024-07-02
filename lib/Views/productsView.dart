import 'package:boboshop/models/data_class.dart';
import 'package:boboshop/models/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        cardItem1(context, Product(
            'Cappuccino',
            Image(image: AssetImage('asset/cappuccino.jpg')),
            12,
            'Made with love from Italy')),
        cardItem1(context, Product(
            'Affogato',
            const Image(image: AssetImage('asset/affogato.jpg')),
            10,
            'Made with love from Italy')),
        cardItem1(context, Product(
            'Espresso',
            const Image(image: AssetImage('asset/expresso.jpg')),
            10,
            'Made with love from Italy')),
        cardItem1(context, Product(
            'Ice coffee',
            const Image(image: AssetImage('asset/icecoffee.jpg')),
            19,
            'Made with love from Italy')),
        cardItem1(context, Product(
            'Latte',
            const Image(image: AssetImage('asset/latte.jpg')),
            14,
            'Made with love from Italy')),
        cardItem1(context, Product(
            'Mazagran',
            const Image(image: AssetImage('asset/mazagran.jpg')),
            19,
            'Made with love from Italy'
                ))
      ],
    );
  }

  Widget cardItem1(BuildContext context, Product pro) {
    return Card(
      elevation: 20,
      child: Column(
        children: [
          Text(pro.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          pro.productImage,
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Expanded(child: Text(pro.description)),
              const SizedBox(
                width: 70,
              ),
              Text("GHS ${pro.price.toString()}"),
              const SizedBox(
                width: 20,)
            ],
          ),
          TextButton(onPressed: (){
            Provider.of<DataClass>(context, listen: false).addProduct(pro);
            //checkout().checkoutList.add();
            // setState(() {
            //   checkout().addProduct( Product(pro.name, pro.productImage, pro.price, pro.description));
            // });
            final  snackBar = SnackBar(content: const Text('item added to cart'),
              action: SnackBarAction(label: 'undo',
                onPressed: (){
                  Provider.of<DataClass>(context, listen: false)
                      .deleteProduct1(pro);
                },
              ),);
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            // checkout().addProduct(pro);
          }, child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('add to cart'),
              SizedBox(width: 20,),
              Icon(Icons.add),
            ],
          ),)
        ],
      ),
    );
  }
}


