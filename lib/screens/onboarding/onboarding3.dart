import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/screens/SplashScreen.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 300, top: 10),
              child: TextButton(
                onPressed: () {},
                child: Text("Skip", style: skipText),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                child: Image.asset("assets/images/onboarding3.png"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Book your car",
              style: headingText,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                  "book a ride from any where you are conveninently, with access to the best drivers and comfortable rides ",
                  style: subheadingText1,
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 100,
            ),
            Stack(
              children: [
               
                Align(
                  child: Container(
                    height: 84,
                    width: 84,
                    child: CircularProgressIndicator(
                      value: 1,
                      backgroundColor: lightgreen,
                      strokeCap: StrokeCap.round,
                      color: green,
                    ),
                  ),
                ),
              Padding(
                  padding: const EdgeInsets.only(left: 145, top: 7,right: 100),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: green,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SplashScreen(),
                              ));
                        },
                        icon: Icon(Icons.arrow_forward_sharp)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
