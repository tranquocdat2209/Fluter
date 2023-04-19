import 'package:flutter/material.dart';
import 'pages/product_detail/product_detail.dart';
import 'pages/cart/cart.dart';
import 'pages/store_locator/store_locartor.dart';
import 'pages/home/home.dart';

class StickyFooter extends StatefulWidget{
  const StickyFooter({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StickyFooter();
  }
}
class _StickyFooter extends State<StickyFooter>{
  int _selectedIndex = 0;
  static const List<Widget> _tabsticky_ft = <Widget>[
    HomePage(),
    ProductDetail(),
    Cart(),
    StoreLocator(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
    );
  }

}