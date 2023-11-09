import 'package:delivery_app/pages/general/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/retailer_categories_main.dart';
import 'package:delivery_app/components/cartNav.dart';
import 'package:delivery_app/pages/retailers/product_list.dart';
import 'package:delivery_app/pages/cart.dart';
import 'package:delivery_app/pages/general/time_scheduler.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Cart(),
              PaymentDetails(),
              Scheduler(),
              SizedBox(height: 20,)
            ],
          ),
        ),
        bottomNavigationBar: CartNav()
    );
  }
}
