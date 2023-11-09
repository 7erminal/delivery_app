import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/retailer.dart';

class ViewRetailers extends StatelessWidget {
  const ViewRetailers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Featured Retailers",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontFamily: 'Gotham Pro',
                  // letterSpacing: 0.5,
                  // fontWeight: FontWeight.w900
                ),
              ),
            ],
          ),
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
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      // padding: const EdgeInsets.all(20),
      // crossAxisCount: 2,
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(2, (index) {
        return Row(
          children: <Widget>[
            Retailer(),
            Retailer()
          ],
        );
      }),
    );
  }
}
