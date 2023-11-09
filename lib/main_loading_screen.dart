import 'package:flutter/material.dart';
import 'package:delivery_app/landing_page.dart';
import 'package:delivery_app/pages/welcome_slider.dart';

class MainLoadScreen extends StatefulWidget {
  const MainLoadScreen({Key? key}) : super(key: key);

  @override
  State<MainLoadScreen> createState() => _MainLoadScreenState();
}

class _MainLoadScreenState extends State<MainLoadScreen> {
  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome () async {
      await Future.delayed(Duration(milliseconds: 1500),(){});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome_slider()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Loading . . .',
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
