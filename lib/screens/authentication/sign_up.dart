// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class SignUp extends StatelessWidget {
//   const SignUp({super.key});

//   // final selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(25),
//           child: Center(
          
//              child: Column(
//                children: [
//                  Row(
                    
//                     children: [
//                       const SizedBox(
//                         height: 50,
//                     ),
//                         const Icon(
//                         Icons.arrow_back_ios_new,
//                         color: Colors.black,
//                         size: 20,
                      
//                       ),
//                       Container(
//                         margin: const EdgeInsets.only(left: 16),
//                         child: const Text(
//                             'Back',
//                             style: TextStyle(
//                             fontSize: 16, 
//                             color: Colors.black,
                            
//                           ),
//                         ),
//                       ),
//                     ],
//                 ),
        
//                 const SizedBox(
//                   height: 20,
//                 ),
        
//                 const Center(
//                   child: Text(
//                     'Sign up with your email or phone number',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w500
//                     ),
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 20,
//                 ),

//                 const TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Name'
//                   ),
//                 ),

//                  const SizedBox(
//                   height: 20,
//                 ),

//                 const TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Email'
//                   ),
//                 ),

//                  const SizedBox(
//                   height: 20,
//                 ),

//                 const TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Your mobile number'
//                   ),
//                 ),

//                  const SizedBox(
//                   height: 20,
//                 ),

//                 const TextField(
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Gender'
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 20,
//                 ), 
                
//                 // const Row(
//                 //   children: [
//                 //      Text('By signing up you agree to the '),
//                 //      Text('Terms of Service and Privacy policy'),
//                 //      Text('and'),
//                 //      Text('Privacy policy'),
//                 //   ],
//                 // ),

//                  const SizedBox(
//                   height: 20,
//                 ),

//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                       // title: const TextSpan('www.educative.io'),
//                       Radio(
//                         value: 1,
//                         groupValue: () {} ,//selectedOption,
//                         onChanged: (value) {
//                           // setState(() {
//                           //   selectedOption = value;
//                           //   print("Button value: $value");
//                           // });
//                         },
//                       ),
//                   ],
//                 ),
//                           RichText(
//                   text: TextSpan(
//                     Radio(
//                         value: 1,
//                         groupValue: () {} ,//selectedOption,
//                         onChanged: (value) {
//                           // setState(() {
//                           //   selectedOption = value;
//                           //   print("Button value: $value");
//                           // });
//                         },
//                       ),
//                     text: 'By signing up. you agree to the',
//                     style: const TextStyle(color: Colors.black),
//                     children: <TextSpan>[
                      
//                       TextSpan(
//                         text: ' terms of service and Privacy and Policy',
//                         style: const TextStyle(
//                           color:Color(0xFF008955),
//                           height: 2,
//                           // decoration: TextDecoration.underline,
//                         ),
//                         recognizer: TapGestureRecognizer()
//                           ..onTap = () {
//                             // Define the action you want when the link is tapped
//                             // launchURL('https://example.com');
//                           },
//                       ),
                      
//                     ],
                    
//                 )),

//                 const SizedBox(
//                   height: 20,
//                 ),


//                 ElevatedButton(
//                    style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF008955),
//                     minimumSize: const Size(320, 50),
//                     maximumSize: const Size(320, 50),
//                     textStyle: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//                   onPressed: () {}, 
//                   child: const Text(
//                     'Sign Up',
//                     style: TextStyle(
                      
//                     ),  
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 20,
//                 ),

//                 OutlinedButton(
                
//                   style: OutlinedButton.styleFrom(
//                   fixedSize: const Size(310, 40),
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(color: Color(0xFF008955),),
//                     borderRadius: BorderRadius.circular(5)
//                   )
//                 ),

//                   onPressed: (){},

                  
//                   child: const Text(
//                     'Sign up with Gmail',
//                     style: TextStyle(
//                     fontSize: 18,
//                     color: Color(0xFF008955),
//                   ),
//                   ),
//                 )


//                ],
               
//              ),
            
//           ),
//         ),
//       ),
//     );
//   }
// }

