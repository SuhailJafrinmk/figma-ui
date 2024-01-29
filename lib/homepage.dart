
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/cartpage.dart';
import 'package:food_delivery_app/widgets/gradient.dart';

class homePageOne extends StatelessWidget {
   homePageOne({super.key});

   //assets for the home page list scroll items
  final List <String> imagePath=[
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
    'assets/images/food4.png',
    'assets/images/food5.png',
  ];

  //list of text for the home  page sroll items
  final List <String> itemNames=[
    'Burger',
    'Donuts',
    'Pizza',
    'Hotdog',
    'Pasta'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
        child: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(29, 34, 51,1),
          type: BottomNavigationBarType.fixed,
          items: 
             [
        BottomNavigationBarItem(label: '',   icon: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/teenyicons_home-solid.svg'))),
        BottomNavigationBarItem(label: '',   icon: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>cartPage()));
        }, icon: SvgPicture.asset('assets/images/solar_cart-3-bold.svg'))),
        BottomNavigationBarItem(label: '',  icon: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/ph_user-fill.svg'))),
         BottomNavigationBarItem(label: '',  icon: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/images/bell.svg'))),
             ]
        ),
      ),
        body: SafeArea(
          
          //top menu bar
      child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: ListTile(
                    leading: SvgPicture.asset(
                      'assets/images/Menu.svg',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    title:const  Text('Deliver to'),
                    subtitle: const Text('387 Merdina ^'),
                    trailing: Image.asset('assets/images/trailinglisttile.png',
                    
                    )),
              ),
        
              //the wishing text with the gradient colour
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GradientText(
                      'Good Afternoon!',
                      gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.yellow,
                      ]),
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
        
              //the search bar 
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                      ),
                       filled: true,
        
                        fillColor: const Color.fromRGBO(249, 249, 250, 1),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'search dishes,restaurents'),
                        
                  ),
                ),
              ),
              //for space
             const  SizedBox(height: 20,),
            
            //listview for the food items available
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: 
                  List.generate(imagePath.length, (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children:[ CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage(imagePath[index]),
                        
                      ),
                      Text(itemNames[index]),
                      ]
                    ),
                  ))
                ,
              ),
        
             ),
        
             const SizedBox(height: 10,),
        
             //text describing the special offers
             const Padding(
               padding:  EdgeInsets.only(left: 30,right: 30),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                
                  Text('Special offers',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900),),
                  Text('view all',style: TextStyle(color: Colors.red),),
                ],
               ),
             ),
             const SizedBox(height: 10,),
        
             Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              height: 179,
               child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(                
                    width: 350,            
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFFFF6B57),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/burger.png'),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
        
                              //row for rating icon and text
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star,
                                  color: Colors.yellow,
                                  ),
                                  Text('4.5',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                  ),
                                  ),
                                ],
                              ),
                              const Text('Burger king',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
        
                            
        
                              //row for transport icon and free delivery text
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/transporticon.svg'),
                                 const  Text('free delivery',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  
                                  ),
                                ],
                              ),
        
                             const  SizedBox(height: 10,),
        
                              //row for elevated button and price tag
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: const ButtonStyle(
                                      
                                    ),
                                    onPressed: (){}, child: const Text('Buy now')),
                                    const SizedBox(width: 10,),
                                 const  Text('\$22.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(                  
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/pizza.png',
                        fit: BoxFit.cover,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
        
                              //row for rating icon and text
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star,
                                  color: Colors.yellow,
                                  ),
                                  Text('4.5',
                                  style: TextStyle(
                                    color: Colors.yellow,
                                  ),
                                  ),
                                ],
                              ),
                             const  Text('Pizza king',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
        
                            
        
                              //row for transport icon and free delivery text
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset('assets/images/transporticon.svg'),
                                  const Text('free delivery',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  
                                  ),
                                ],
                              ),
        
                              const SizedBox(height: 10,),
        
                              //row for elevated button and price tag
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style:const ButtonStyle(
                                      
                                    ),
                                    onPressed: (){}, child: const Text('Buy now')),
                                    const SizedBox(width: 10,),
                                  const Text('\$20.00',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                  )
                ],
               ),
             ),
        
             const SizedBox(height: 10,),
        
             const Padding(
               padding: EdgeInsets.only(left: 20,right: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Restaurents',
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900),
                  ),
                  Text('View all',style: TextStyle(color: Colors.red),),
                ],
               ),
             ),
        
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 350,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                              image: DecorationImage(image:AssetImage('assets/images/seafoodmaki.png')
                              ,fit: BoxFit.cover )
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              
                              children: [
                                const Text('Seafood maki sushi',
                                style: TextStyle(fontSize: 20,
                                fontWeight:FontWeight.w800,
                                ),
                                
                                ),
                                const SizedBox(width: 80,),
                                const Icon(Icons.star,
                                color: Colors.yellow,
                                ),
                                const Text('4.5'),
                                SvgPicture.asset('assets/images/transporticon.svg'),
                              ],
                            ),
                            
                          )
                        ],
                      ),
                    ),

                    const SizedBox(width: 10,),

                    //to edit
                    SizedBox(
                      width: 350,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                              image: DecorationImage(image:AssetImage('assets/images/chemmeenroast.jpeg')
                              ,fit: BoxFit.cover )
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              
                              children: [
                                const Text('Prawns delight',
                                style: TextStyle(fontSize: 20,
                                fontWeight:FontWeight.w800,
                                ),
                                
                                ),
                                const SizedBox(width: 80,),
                                const Icon(Icons.star,
                                color: Colors.yellow,
                                ),
                                const Text('4.5'),
                                SvgPicture.asset('assets/images/transporticon.svg'),
                              ],
                            ),
                            
                          )
                        ],
                      ),
                    ),

                    //
                  ],
                ),
                
                           ),
              )
        
            
        
           
        
                
              
            ],
          ),
        ),
      ),
    ));
  }
}
