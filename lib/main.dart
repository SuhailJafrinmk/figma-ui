import 'package:flutter/material.dart';
import 'package:food_delivery_app/splash_screen.dart';


void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}