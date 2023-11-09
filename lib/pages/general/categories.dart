import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_icon_text_button_categories.dart';

class Categories_g extends StatefulWidget {
  const Categories_g({Key? key}) : super(key: key);

  @override
  State<Categories_g> createState() => _Categories_gState();
}

class _Categories_gState extends State<Categories_g> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      // crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: MyIconTextButtonCat(label_: "Restaurant",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Groceries",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Laundry",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Phones and Accessories",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Pharmacy",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Bakery",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Fashion",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Electronics",icon_: Icons.food_bank,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: MyIconTextButtonCat(label_: "Phones and Accessories",icon_: Icons.food_bank,),
        ),
      ],
    );
  }
}
