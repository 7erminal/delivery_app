import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                "Welcome back!",
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
                "Enter your details to continue",
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
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(),
                      hintText: 'Mobile Number',
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
                      hintText: 'Password',
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
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text(
                  "I forgot my password",
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: SizedBox(height:45,child: MyTextButtonIcon(label_: "Login", icon_: Icons.arrow_circle_right, color_: Colors.grey.shade400, type_: 'continues', action_: '/otp'))
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Center(
                child: Text(
                  "or",
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
            ),
            Spacer(),
            TextButton(
              // child: Text(
              //     'Start shopping',
              //   style: TextStyle(color: Colors.white),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tab(
                    icon: new Image.asset('images/googleicon.jpg'),
                    height: 20,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPressed: null,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey.shade300)
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:9.0),
              child: TextButton(
                // child: Text(
                //     'Start shopping',
                //   style: TextStyle(color: Colors.white),
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tab(
                      icon: Image.asset('images/facebook.png'),
                      height: 20,
                    ),
                    SizedBox(
                      width: 25.0,
                    ),
                    Text(
                      'Continue with Facebook',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey.shade300)
                        )
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Futura Book',
                          decoration: TextDecoration.none,
                          color: Colors.black
                        )
                      ),
                      TextSpan(
                        text: " Sign Up",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Futura Book',
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/sign-up-name');
                          }
                      )
                    ]
                  ),
                )
              ),
            )
          ],
        )
    );
  }
}
