import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/retailer_categories_main.dart';
import 'package:delivery_app/components/cartNav.dart';
import 'package:delivery_app/pages/retailers/product_list.dart';
import 'package:delivery_app/pages/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text(
          //   'Welcome',
          // ),
          actions: <Widget>[

          ],
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Cart(),
          ),
        ),
        bottomNavigationBar: CartNav()
    );
  }
}
