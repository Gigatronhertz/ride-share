// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/provider/userprovider.dart';
import 'package:rideshare/screens/home.dart';
import 'package:rideshare/screens/onboarding/onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
@override
void initState() {
   
    super.initState();
     Provider.of<Userprovider>(context,listen: false).currentuser();
    Future.delayed(Duration  (seconds: 3),(){
     
 if(Provider.of<Userprovider>(context,listen: false).verifylogin == true){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homepage(),
                          ));
                    }
                    else{ Navigator.pushReplacement( context , MaterialPageRoute(builder: (context) =>Onboarding1(),));}
       
    
    });
  }

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