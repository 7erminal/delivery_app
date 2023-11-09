import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyIconTextButtonCat extends StatelessWidget {
  // const MyTextButtonIcon({Key? key}) : super(key: key);

  var label_;
  var icon_;
  var color_;
  var type_;
  var action_;

  MyIconTextButtonCat({this.label_,this.icon_});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // child: Text(
      //     'Start shopping',
      //   style: TextStyle(color: Colors.white),
      // ),
      icon: Icon(
        icon_,
        color: Colors.white,
      ),
      label: Text(label_,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontFamily: 'Gotham Pro',
          color: Colors.white,
          fontSize: 11
        ),
      ),
      onPressed: null,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
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

