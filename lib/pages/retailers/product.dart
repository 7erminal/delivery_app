import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          children: [
            Padding(
              // padding: const EdgeInsets.all(3.0),
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 45.0),
              child: RichText(
                text: TextSpan(
                    text: "Ascovit-CEE",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Futura Book',
                        decoration: TextDecoration.none,
                        color: Colors.black
                    )
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
              child: RichText(
                  text: TextSpan(
                      text: "Vitamin-C Ascorbic Acid B.P.100mg",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Futura Book',
                          decoration: TextDecoration.none,
                          color: Colors.grey
                      )
                  )
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
              child: RichText(
                  text: TextSpan(
                      text: "Ghc 350.00",
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Futura Book',
                          decoration: TextDecoration.none,
                          color: Colors.black
                      )
                  )
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ink(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove),
                  splashRadius: 40,
                  splashColor:
                  Colors.deepOrange,
                )
            ),
            RichText(
                text: TextSpan(
                    text: "Ghc 350.00",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Futura Book',
                        decoration: TextDecoration.none,
                        color: Colors.black
                    )
                )
            ),
            Ink(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.add),
                  splashRadius: 40,
                  splashColor:
                  Colors.deepOrange,
                )
            )
          ],
        ),
        SizedBox(height: 3,),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        SizedBox(height: 8,)
      ],
    );
  }
}
