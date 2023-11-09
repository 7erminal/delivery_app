import 'package:flutter/material.dart';
import 'package:delivery_app/main_loading_screen.dart';
import 'package:delivery_app/pages/set_location.dart';
import 'package:delivery_app/auth/login.dart';
import 'package:delivery_app/auth/sign_up_name.dart';
import 'package:delivery_app/auth/sign_up.dart';
import 'package:delivery_app/auth/OTP.dart';
import 'package:delivery_app/auth/setPassword.dart';
import 'package:delivery_app/pages/customer/home.dart';
import 'package:delivery_app/pages/retailers/categories.dart';
import 'package:delivery_app/pages/retailers/retailer_details.dart';
import 'package:delivery_app/pages/cart.dart';
import 'package:delivery_app/pages/checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetxh',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MainLoadScreen(),
      initialRoute: '/',
      routes: {
        '/': (context)=>MainLoadScreen(),
        '/set-location': (context)=>SetLocation(),
        '/login': (context)=>Login(),
        '/sign-up-name': (context)=>EnterName(),
        '/sign-up': (context)=>SignUp(),
        '/otp': (context)=>OTP(),
        '/set-password': (context)=>SetPassword(),
        '/customer-home' : (context)=>HomeScreen(),
        '/categories' : (context)=>Categories_r(),
        '/retailer-details' : (context)=>RetailerDetails(),
        '/cart' : (context)=>Cart(),
        '/checkout' : (context)=>Checkout(),
      },
    );
  }
}


