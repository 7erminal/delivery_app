import 'package:flutter/material.dart';
import 'package:delivery_app/pages/categories.dart';
import 'package:delivery_app/pages/retailers/view_retailers_customer.dart';
import 'package:delivery_app/components/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: homeBody(),
        ),
      ),
      bottomNavigationBar: BottomNav()
    );
  }

  Widget homeBody () {
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
                          "Welcome!",
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
                    padding: EdgeInsets.only(top: 3.0),
                    child: Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Deliver to ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Futura Book',
                                        decoration: TextDecoration.none,
                                        color: Colors.white
                                    )
                                ),
                                TextSpan(
                                    text: "Nii Adoms street, Accra",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Futura Book',
                                        decoration: TextDecoration.none,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                )
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Categories(),
            ViewRetailers(),
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
