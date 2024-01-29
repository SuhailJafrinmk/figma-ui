// ignore: unused_import
import 'dart:ffi' as ffi;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'homepage.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight * .3,
              width: screenWidth,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/loginpagebanner.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios))),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Please sign in to your \nexisting account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight * .7,
              width: screenWidth,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Form(
                  child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Email'),
                      TextFormField(
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(249, 249, 250, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Password'),
                      TextFormField(
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromRGBO(249, 249, 250, 1),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        'forget password',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return homePageOne();

                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(249, 60),
                          backgroundColor:const Color.fromRGBO(255, 107, 87, 1),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'or login with',
                        style: TextStyle(
                            color: Color.fromRGBO(211, 209, 216, 1),
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(153, 60),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/facebooklogo.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text('facebook'),
                            ],
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(153, 60),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/googlelogo.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Google'),
                            ],
                          )),
                    ],
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
