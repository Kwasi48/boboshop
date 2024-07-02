import 'package:flutter/material.dart';


class SuccessView extends StatefulWidget {
  const SuccessView({super.key});

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
                'Order Successful',
            ),
          ),
          Center(
            child: Text(
              'Thanks for buying from Bobo'
                   ,
            ),
          ),
          ElevatedButton( onPressed:(){
            Navigator.pop(context);
          }, child: Text('Back to BoboShop☕'))
        ],
      ),


    );

  }
}


