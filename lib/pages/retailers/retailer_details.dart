import 'package:flutter/material.dart';
import 'package:delivery_app/pages/retailers/retailer_categories_main.dart';
import 'package:delivery_app/components/cartNav.dart';

class RetailerDetails extends StatefulWidget {
  const RetailerDetails({Key? key}) : super(key: key);

  @override
  State<RetailerDetails> createState() => _RetailerDetailsState();
}

class _RetailerDetailsState extends State<RetailerDetails> {
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
          child: mainBody(),
        ),
      ),
      bottomNavigationBar: CartNav()
    );
  }

  Widget mainBody () {
    return Stack(
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
                          "Tabs and Pills!",
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
                          "ghc 12.00",
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
                          " . ",
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
                          "30mins - 40mins",
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
                          " . ",
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
                          "4.0",
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: 'Gotham Pro',
                              // letterSpacing: 0.5,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        Icon(
                            Icons.star,
                            color: Colors.amber
                        )
                      ],
                    )
                  ),
                ],
              ),
            ),
            // Categories(),
            // ViewRetailers(),
            RetailerCatsMain(),
          ],
        ),
        Container(
          height: 135,
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Icons.done),
                      suffixIcon: Icon(Icons.search_rounded),
                      focusedBorder: OutlineInputBorder(),
                      hintText: 'Search here',
                      hintStyle: TextStyle(fontSize: 12, fontFamily: 'Futura Book'),
                      enabledBorder: OutlineInputBorder(

                        borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),

                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
