import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/screens/authentication/login_screen.dart';
import 'package:rideshare/screens/authentication/signup.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        SizedBox(height:150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,),
              
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/WelcomeScreen.png"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: headingText,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                  "Have an amazing ride sharing experience",
                  style: subheadingText1,
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 150,
            ),

                InkWell(
                  onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => SingnUpScreen(),) );
                  },
                  child: Container(
                       width: 340,
                        decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("Create an account",style:normaltext,),
                        ),
                      ),
                ),
                    /////
                    ///
                    ///sized
                    SizedBox(height: 15,),

                      InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => loginScreen(),) );
                        },
                        child: Container(
                                           width: 340,
                        decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),border: Border.all(width: 2,color: green)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Text("log in",style:normaltextgreen,),
                        ),
                                          ),
                      )
          
          ],
        ),
      ),
    );
  }
}
