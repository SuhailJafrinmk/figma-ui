import 'package:flutter/material.dart';
import 'package:food_delivery_app/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFFFF6B57),
        child: Column(children: [
          Container(
            height: screenHeight * .5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/layerimage.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: screenHeight * .3,
            width: screenWidth * .9,
            child: Text(
              'I dont feel like cooking.Lets \norder food delivery',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 38,
                color: const Color(0xFF242731),
              ),
            ),
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
            height: screenHeight * .1,
            width: screenWidth * .9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(160, 60),
                    backgroundColor: Colors.white12,
                    
                  ),
                  onPressed: (
                  
                  ) {},
                  child: Text('Sign up',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.20999999344348907),
                  ),
                  ),                                                           
                ),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(160, 60),
                    backgroundColor: Colors.black54,
                  ),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const login_page();
                  }));
                },
                 child: const Text('Log in',
                 style: TextStyle(color: Colors.white),
                 )
                 ),
              ],
            ),
          )
        ]
        ),
      ),
    );
  }
}
