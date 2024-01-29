import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class cartPage extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cart',style: GoogleFonts.poppins(
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: SvgPicture.asset('assets/images/Path 3391.svg',height: 15,width: 15,fit: BoxFit.cover,)),
        ),
      ),
      body: SizedBox.expand(

        child: Column(
          children: [
            SizedBox(height: 230,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
              
                  contentPadding: EdgeInsets.only(left: 20,right: 20),
                  leading: Image.asset('assets/images/pizza.png'),
                  
                  title: Text('Pizza margerita\nEuropean',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w900
            
                  ),
                  ),
                  subtitle: Text('\$ 9.00',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20
                  ),
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.clear),
                      
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 20,right: 20),
                  leading: Image.asset('assets/images/sphagetti.png'),
                   title: Text('Pizza margerita\nEuropean',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w900
            
                  ),
                  ),
                  subtitle: Text('\$ 9.00',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20
                  ),
                  ),
                  trailing: Column(
                    children: [
                      Icon(Icons.clear),
                      
                    ],
                  ),
                ),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: TextField(
                
                decoration: InputDecoration(
                  hintText: 'Promo code',
                  suffixIcon: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                      backgroundColor: Color(0xFFFF6B57)),
                    onPressed: (){}, child: Text('Add',style: TextStyle(color: Colors.white),)),
       
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      
                    )
                  )
                ),
              ),
            ),  
              
            ListTile(

              leading: Text('Sub total',
              style: GoogleFonts.poppins(
                fontSize: 20
              ),
              ),
              trailing: Text('\$12.20',
              style: GoogleFonts.poppins(
                fontSize: 20
              ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Text('Tax and fees',
              style: GoogleFonts.poppins(
                fontSize: 20
              ),
              ),
              trailing: Text('\$12.20',
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Text('Delivery',
              style: GoogleFonts.poppins(
                fontSize: 20
              ),
              ),
              trailing: Text('\$12.20',
              style: GoogleFonts.poppins(
                fontSize: 20
              ),
              ),
            ),

            SizedBox(height: 30,),

            
            
          ],
        ),
        
      ),
    );
  }
}