import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:delivery_app/components/my_text_button_icon.dart';
import 'package:delivery_app/pages/customer/home.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                "You've got mail!",
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
                "Verify your phone number. Enter the verification code sent to +233557881327",
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
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            // hintText: 'Enter your name',
                            // hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'Futura Book'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white
                        ),
                        onChanged: null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            // hintText: 'Enter your name',
                            // hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'Futura Book'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white
                        ),
                        onChanged: null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            // hintText: 'Enter your name',
                            // hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'Futura Book'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white
                        ),
                        onChanged: null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(),
                            // hintText: 'Enter your name',
                            // hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'Futura Book'),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade600, width: 1),
                            ),
                            filled: true,
                            fillColor: Colors.white
                        ),
                        onChanged: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 45.0),
              child: Center(
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "Didn't get the code?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura Book',
                                  decoration: TextDecoration.none,
                                  color: Colors.black
                              )
                          ),
                          TextSpan(
                              text: " Resend code",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura Book',
                                  decoration: TextDecoration.none,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushNamed(context, '/login');
                                }
                          )
                        ]
                    ),
                  )
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                  height:45,
                  child: TextButton(
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
                            'Verify Number',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                            // size: 30,
                          )
                        )
                      ],
                    ),
                    // onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen())),
                    onPressed: ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeScreen()), (route) => false),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: BorderSide(color: Colors.red)
                        )
                      )
                    ),
                  )
              ),
            )
          ],
        )
    );
  }
}
