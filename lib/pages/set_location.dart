import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    final double top_height = MediaQuery.of(context).size.height * 0.40;
    final double bottom_height = MediaQuery.of(context).size.height * 0.60;

    return Scaffold(
      body: setLocationBody(top_height, bottom_height),
    );
  }

  Widget setLocationBody(double top_height, double bottom_height){
    return Container(
      // width: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(horizontal: 1.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                height: top_height,
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
              child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Image.asset('images/neighbourhood.jpg', fit: BoxFit.cover,),
              ),
            ),
            Expanded(
              child: Container(
                // height: bottom_height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[100]
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Text(
                        "Set your Location",
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
                      padding: const EdgeInsets.only(top: 26.0),
                      child: Text(
                        "Tell us your current address. You can change this later",
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
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(),
                          hintText: 'Enter your address',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
                          ),
                          filled: true,
                          fillColor: Colors.white
                        ),
                        onChanged: null,
                      ),
                    ),
                    Spacer(),
                    Expanded(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(height: 45, child: MyTextButtonIcon(label_: "Use device location", icon_: null, color_: Colors.redAccent.shade700, type_: 'continues', action_: null)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(height: 45, child: MyTextButtonIcon(label_: "Start shopping", icon_: Icons.arrow_circle_right, color_: Colors.grey.shade400, type_: 'continues', action_: '/login')),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
