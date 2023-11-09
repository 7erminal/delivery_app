import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_icon_text_button_categories.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';
import 'package:delivery_app/pages/general/categories.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55.0),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Text(
                  "Categories",
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
              padding: const EdgeInsets.only(top: 18.0),
              child: Categories_g()
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: SizedBox(height:45,child: MyTextButtonIcon(label_: "Find Me Something", icon_: null, color_: Colors.grey.shade400, type_: 'continues', action_: '/categories')),
            )
          ],
        ),
      ),
    );
  }
}
