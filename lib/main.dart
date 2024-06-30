import 'package:flutter/material.dart';

void main() {
  runApp(const BoboMain());
}

 class BoboMain extends StatelessWidget {
   const BoboMain({super.key});

   @override
   Widget build(BuildContext context) {
     return   MaterialApp(
       theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
       title: 'BoboShop',
       home:const BoboHome()
     );
   }
 }


 class BoboHome extends StatefulWidget {
   const BoboHome({super.key});

   @override
   State<BoboHome> createState() => _BoboHomeState();
 }

 class _BoboHomeState extends State<BoboHome> {
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       appBar: AppBar(
         title: const Text('BoboShop'),
       ),

     );
   }
 }


