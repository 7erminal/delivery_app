import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_text_button_blank.dart';
import 'package:delivery_app/pages/retailers/product_list.dart';

class RetailerCatsMain extends StatefulWidget {
  const RetailerCatsMain({Key? key}) : super(key: key);

  @override
  State<RetailerCatsMain> createState() => _RetailerCatsMainState();
}

class _RetailerCatsMainState extends State<RetailerCatsMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Text(
                    "Popular",
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
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.black,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: MyTextButtonCat(label_: "Painkillers", b_color_: Colors.grey,),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
