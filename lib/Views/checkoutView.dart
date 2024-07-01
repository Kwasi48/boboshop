//import 'package:boboshop/models/checkout.dart';
import 'package:boboshop/models/data_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 ValueNotifier itemsNotifier = ValueNotifier([]);
class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {


  @override
  Widget build(BuildContext context) {
    return Consumer<DataClass> (builder: (context, data, child)
    { return ListView.builder(
      itemCount: data.checkoutList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(data.checkoutList[index].name),
        );
      },

    );}
    );
  }
}