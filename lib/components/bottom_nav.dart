import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business, color: Colors.white,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout_outlined, color: Colors.white,),
          label: '',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(color: Colors.white),
      onTap: null,
    );
  }
}
