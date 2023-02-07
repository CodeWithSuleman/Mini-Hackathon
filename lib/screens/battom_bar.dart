import 'package:flutter/material.dart';
import 'package:minihackathon/constant/constant_color.dart';
import 'package:minihackathon/screens/product_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

int _selectedItem = 0;
const List<Widget> mylist = [
  ProductScreen(),
  ProductScreen(),
  ProductScreen(),
  ProductScreen()
];

class _BottomBarScreenState extends State<BottomBarScreen> {
  void _onTapitem(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mylist[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedItem,
        selectedItemColor: Color(ConstanColor.color1),
        onTap: _onTapitem,
      ),
    );
  }
}
