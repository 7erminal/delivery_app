import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/product.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: _createGrid(),
          )
        ],
      ),
    );
  }

  Widget _createGrid() {
    // Vars v = Vars();
    return Column(
      children: List.generate(2, (index) {
        return Product();
      }),
    );
  }
}
