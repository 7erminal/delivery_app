import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';

class CartNav extends StatelessWidget {
  const CartNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: "1 Item |",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Futura Book',
                                decoration: TextDecoration.none,
                                color: Colors.white
                            )
                        ),
                        TextSpan(
                          text: " 350 GHC",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Futura Book',
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ]
                  )
              ),
            ),
            MyTextButtonIcon(label_: "Checkout", icon_: Icons.arrow_circle_right, color_: Colors.grey.shade400, type_: 'continues', action_: '/checkout')
          ],
        ),
      height: 90,
    );
  }
}
