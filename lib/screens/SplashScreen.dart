import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rideshare/components/colors.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(child: Image.asset("assets/images/icons8-car-100.png")),
           Text("RideShare",style: GoogleFonts.robotoMono(textStyle: TextStyle(fontSize:40,color:green,fontWeight:FontWeight.w600)))
           
         ],
       )),
    );
  }
}