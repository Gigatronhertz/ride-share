// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:provider/provider.dart';
// import 'package:rideshare/components/colors.dart';
// import 'package:rideshare/components/textstyle.dart';

// class locationprovider extends ChangeNotifier {
//   String? currentLocation;
  

//   void getCurrentLocation() async {
//     LocationPermission permission;

//     permission = await Geolocator.checkPermission();
//     // if (permission == LocationPermission.denied) {
//     //   // permission = await Geolocator.requestPermission();
//     //   if (permission == LocationPermission.denied) {
        
//     //   } else {
//     //     // var position = await Geolocator.getCurrentPosition(
//     //     //     desiredAccuracy: LocationAccuracy.high);
       
//     //     // setState(() {
//     //     // currentLocation = "latitude: ${position.latitude}" +
//     //     //     " , " +
//     //     //     "Logitude: ${position.longitude}";

//     //     // });
//     //   }
//     // } else {
//       // var position = await Geolocator.getCurrentPosition(
//       //     desiredAccuracy: LocationAccuracy.high);
//       // // setState(() {
//       // currentLocation = "latitude: ${position.latitude}" +
//       //     " , " +
//       //     "Logitude: ${position.longitude}";
    
//       // });
//     }
//     Widget locationWidget = Consumer<locationprovider>(
//         builder: (context, mylocation, child) =>
       
//          Container(
          
//               child: AlertDialog(
//                 actions: [
//                     Container(
                  
//                   height: 459,
//                   width: 340,
//                   child: Column(children: [
//                     SizedBox(height: 40,),
//                     Container(
//                       height: 110,
//                       width: 110,
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Image.asset("assets/images/Circle.png"),
//                           Center(child: Icon(Icons.location_on_rounded))
//                         ],
//                       ),
//                     ),
//                   //text
//                   SizedBox(height: 40,),
//                   Text("Enable your location",style: headingText1,),
//                   SizedBox(height: 30,),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 40,right: 40),
//                     child: Text("Choose your location to start find the request around you",style: subheadingText1,textAlign: TextAlign.center),
//                   ),
//                   SizedBox(height: 30,),
//                   InkWell(
//                     onTap: () async {
//                     permission = await Geolocator.requestPermission();
                    
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(color: green, borderRadius: BorderRadius.circular(10)),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 10),
//                         child: Text("Use my location",style:normaltext,),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   TextButton(child: Text("Skip for now",style: normaltextgrey,),onPressed: () {
//                     print("object");
//                     mylocation.ispermission =true;
                    
//                   },)
//                   ]),
//                 ),
//                 ],
              
//               ),
//             ));
//     notifyListeners();
//   }


  
// }


