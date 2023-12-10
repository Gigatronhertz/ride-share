import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/screens/notification.dart';
import 'package:rideshare/screens/pages/favourites.dart';
import 'package:rideshare/screens/pages/offer.dart';
import 'package:rideshare/screens/pages/profile.dart';
import 'package:rideshare/screens/pages/walet.dart';
import 'package:rideshare/widgets/custompaint.dart';

import 'pages/homescreen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int pageIndex = 0;
  bool walletselected = false;
  final pages = [
    home(),
    favourites(),
    wallet(),
    offers(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              
                
                
              body:Stack( children: [
                
                
                pages[pageIndex],
                
                Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: 
                    

                    [
                      SizedBox(height: 60,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            color: green.withOpacity(1),
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(onTap: () {}, child: Icon(Icons.menu)),
                                      ),
                                      
                      ),
                      SizedBox(width: 250,),
                      InkWell(
                  
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: InkWell(onTap: () {Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => notificationScreen(),
                                      ));}, child: Icon(Icons.notifications_outlined)),
                                        ),
                        ),
                      ),
                    ],),
                  
              
                ],) ,
              bottomNavigationBar: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          pageIndex = 0;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            pageIndex == 0
                                ? Icon(
                                    Icons.home_rounded,
                                    color: green,
                                  )
                                : Icon(Icons.home_outlined),
                            Text(
                              "Home",
                              style: TextStyle(
                                  color: pageIndex == 0 ? green : Colors.black),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pageIndex = 1;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            pageIndex == 1
                                ? Icon(
                                    Icons.favorite_outlined,
                                    color: green,
                                  )
                                : Icon(Icons.favorite_border_outlined),
                            Text(
                              "Favourite",
                              style: TextStyle(
                                  color: pageIndex == 1 ? green : Colors.black),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17.0, right: 15),
                        child: Text(
                          "Wallet",
                          style: TextStyle(
                              color: pageIndex == 2 ? green : Colors.black),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pageIndex = 3;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            pageIndex == 3
                                ? Icon(
                                    Icons.local_offer_rounded,
                                    color: green,
                                  )
                                : Icon(Icons.local_offer_outlined),
                            Text(
                              "Offer",
                              style: TextStyle(
                                  color: pageIndex == 3 ? green : Colors.black),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pageIndex = 4;
                          setState(() {});
                        },
                        child: Column(
                          children: [
                            pageIndex == 4
                                ? Icon(Icons.person, color: green)
                                : Icon(Icons.person_outlined),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  color: pageIndex == 4 ? green : Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 135,
            right: 135,
            child: InkWell(
              onTap: () {
                pageIndex = 2;
                setState(() {});
              },
              child: Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 120,
                    child: CustomPaint(
                      size: Size(
                          100,
                          (100 * 0.5)
                              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 13,
                    right: 13,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: pageIndex == 2
                          ? Image.asset("assets/images/wallet2.png")
                          : Image.asset("assets/images/wallet12.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
