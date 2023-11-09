import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyTextButtonIcon extends StatelessWidget {
  // const MyTextButtonIcon({Key? key}) : super(key: key);

  var label_;
  var icon_;
  var color_;
  var type_;
  var action_;

  MyTextButtonIcon({this.label_,this.icon_,this.color_, this.type_, this.action_});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // child: Text(
      //     'Start shopping',
      //   style: TextStyle(color: Colors.white),
      // ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              label_,
              style: TextStyle(color: Colors.white,fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Icon(
                icon_,
                color: Colors.white,
                // size: 30,
              )
          )
        ],
      ),
      onPressed: type_=='continues' ? ()=>Navigator.pushNamed(context, action_) : ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>action_)),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color_),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                // side: BorderSide(color: Colors.red)
              )
          )
      ),
    );
  }
}

