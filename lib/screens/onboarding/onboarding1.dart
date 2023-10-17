import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 300, top: 10),
              child: TextButton( onPressed: () {

              },
              
              
              child: Text("Skip",style: skipText ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Container(
                child: Image.asset("assets/images/onboarding1.png"),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Anywhere you are",
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
              height: 120,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 170.7,top: 7),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: green,
                    ),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_sharp)),
                  ),
                ),
                Align(
                  child: Container(
                    height: 84,
                    width: 84,
                    child: CircularProgressIndicator(
                      value: 0.4,
                      backgroundColor: lightgreen,
                      strokeCap: StrokeCap.round,
                      color: green,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
