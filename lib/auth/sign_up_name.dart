import 'package:flutter/material.dart';

class EnterName extends StatefulWidget {
  const EnterName({Key? key}) : super(key: key);

  @override
  State<EnterName> createState() => _EnterNameState();
}

class _EnterNameState extends State<EnterName> {
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
                "Hello there!",
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
                "What is your name?",
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
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(),
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.grey, fontFamily: 'Futura Book'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300, width: 0.5),
                          ),
                          filled: true,
                          fillColor: Colors.white
                      ),
                      onChanged: null,
                    ),
                  ),
                  IconButton(
                    iconSize: 55,
                    icon: Icon(
                      Icons.arrow_circle_right_sharp,
                      color: Colors.black,
                    ),
                    onPressed: ()=>Navigator.pushNamed(context, '/sign-up'),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
