import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  @override
  Widget build(BuildContext context) {
    final double top_height = MediaQuery.of(context).size.height * 0.40;
    final double bottom_height = MediaQuery.of(context).size.height * 0.60;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fetxh',
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: loginPage(top_height, bottom_height),
    );
  }

  Widget loginPage(double top_height, double bottom_height){
    return Container(
      // width: MediaQuery.of(context).size.height,
      //   margin: EdgeInsets.symmetric(horizontal: 11.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "Almost done!",
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
                "Great! Now create a password.",
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
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      hintText: 'Create Password',
                      hintStyle: TextStyle(fontSize: 12, fontFamily: 'Futura Book'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100
                  ),
                  onChanged: null,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(fontSize: 12, fontFamily: 'Futura Book'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100
                  ),
                  onChanged: null,
                ),
              ),
            ),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(height:45,child: MyTextButtonIcon(label_: "Sign Up", icon_: Icons.arrow_circle_right, color_: Colors.grey.shade400, type_: 'continues', action_: '/otp'))
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Center(
                  child: Text(
                    "By signing up, you are agreeing to our terms and conditions",
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
            )
          ],
        )
    );
  }
}
