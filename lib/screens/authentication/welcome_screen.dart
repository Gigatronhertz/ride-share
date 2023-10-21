import 'package:flutter/material.dart';
import 'package:rideshare/components/textstyle.dart';
// import 'package:rideshare/components/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            // Colors.white,
            children: [
              const SizedBox(
                height: 65,
              ),
              Image.asset("assets/images/WelcomeScreen.png"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome",
                style: headingText,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text("Have a better sharing experience",
                    style: subheadingText1, textAlign: TextAlign.center),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF008955),
                  minimumSize: const Size(320, 50),
                  maximumSize: const Size(320, 50),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Create an account',
                    style: TextStyle(),
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  fixedSize: const Size(310, 40),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xFF008955),),
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                onPressed: () {}, 
                child: const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF008955),
                  ),
                )
              )
            ]),
      ),
    );
  }
}
