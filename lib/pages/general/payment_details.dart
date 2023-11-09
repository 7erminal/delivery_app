import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Payment Method",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontFamily: 'Gotham Pro',
                  // letterSpacing: 0.5,
                  fontWeight: FontWeight.w900
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "Select payment method",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontFamily: 'Futura Book',
                  // letterSpacing: 1.0,
                  fontWeight: FontWeight.w100
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cash on delivery",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: 'Futura Book',
                      // letterSpacing: 1.0,
                      fontWeight: FontWeight.w100
                  ),
                ),
                Checkbox(
                    value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Mobile Money",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: 'Futura Book',
                      // letterSpacing: 1.0,
                      fontWeight: FontWeight.w100
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Debit/Credit card",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontFamily: 'Futura Book',
                      // letterSpacing: 1.0,
                      fontWeight: FontWeight.w100
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
