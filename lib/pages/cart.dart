import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/retailer_categories_main.dart';
import 'package:delivery_app/components/cartNav.dart';
import 'package:delivery_app/pages/retailers/product_list.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                color: Colors.black,
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0.5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Cart",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gotham Pro',
                                // letterSpacing: 0.5,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          Spacer(),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(onPressed: null, iconSize: 40, icon: Icon(
                              Icons.doorbell_outlined,
                              color: Colors.white,
                            )),
                          ),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(onPressed: null, iconSize: 40, icon: Icon(
                              Icons.short_text_outlined,
                              color: Colors.white,
                            )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.delivery_dining_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5.0,),
                            Text(
                              "Deliver to ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gotham Pro',
                                // letterSpacing: 0.5,
                                // fontWeight: FontWeight.w900
                              ),
                            ),
                            Text(
                              "Terminal, ",
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Gotham Pro',
                                  // letterSpacing: 0.5,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
              // Categories(),
              // ViewRetailers(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                            Icons.flaky_outlined
                        ),
                        SizedBox(width: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Pills and Tabs",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Gotham Pro',
                                  // letterSpacing: 0.5,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            SizedBox(width: 8,),
                            Icon(
                              Icons.delivery_dining_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "30-40 mins",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gotham Pro',
                                // letterSpacing: 0.5,
                                // fontWeight: FontWeight.w700
                              ),
                            )
                          ],
                        )


                      ],
                    ),
                  ],
                ),
              ),
              Products(),
            ],
          ),
        ],
      ),
    );
  }
}

