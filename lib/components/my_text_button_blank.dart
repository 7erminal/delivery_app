import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyTextButtonCat extends StatelessWidget {
  // const MyTextButtonIcon({Key? key}) : super(key: key);

  var label_;
  var b_color_;
  var type_;
  var action_;

  MyTextButtonCat({this.label_, this.b_color_});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // child: Text(
      //     'Start shopping',
      //   style: TextStyle(color: Colors.white),
      // ),
      child: Text(label_,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontFamily: 'Gotham Pro',
            color: Colors.white,
            fontSize: 11
        ),
      ),
      onPressed: null,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(b_color_),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                // side: BorderSide(color: Colors.red)
              )
          ),
          // padding: EdgeInsets.only(top: 18.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 18.0)
          )
      ),
    );
  }
}

