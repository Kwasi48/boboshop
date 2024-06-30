import 'package:boboshop/Views/checkoutView.dart';
import 'package:boboshop/Views/productsView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoboMain());
}

class BoboMain extends StatelessWidget {
  const BoboMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true),
      home: BoboHome(),
    );
  }
}

class BoboHome extends StatefulWidget {
  const BoboHome({super.key});

  @override
  State<BoboHome> createState() => _BoboHomeState();
}

class _BoboHomeState extends State<BoboHome> {
  int _selectedIndex = 0;

  final _boboPages = [ProductView(), CheckoutView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: const Text('BoboShop☕'),
      ),
      body: _boboPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout), label: '')
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
