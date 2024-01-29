
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'homescreen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      
       gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF6B57),
              Color(0xFFFF6B57),
            ],
          ),

      childWidget: SizedBox(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/images/cup.svg'),
            Text('Comida',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w800),),
          ],
        ),
      ),
    ),
    duration: const Duration(milliseconds: 3000),
          animationDuration: const Duration(milliseconds: 1500),
          onAnimationEnd: () => debugPrint("On Scale End"),
          nextScreen: homePage()
    );
  }
}


