import 'package:flutter/material.dart';
import 'package:delivery_app/pages/general/categories.dart';
import 'package:delivery_app/components/bottom_nav.dart';

class Categories_r extends StatelessWidget {
  const Categories_r({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   'Welcome',
        // ),
        actions: <Widget>[
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNav(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Row(
                children: [
                  Text(
                    "Popular Categories",
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
            ),
            Padding(
                padding: const EdgeInsets.only(top: 78.0),
                child: Categories_g()
            ),
          ],
        ),
      ),
    );
  }
}
