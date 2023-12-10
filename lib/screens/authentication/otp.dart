import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/provider/userprovider.dart';
import 'package:rideshare/screens/authentication/setpassword.dart';
import 'package:rideshare/screens/authentication/signup.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
final GlobalKey<FormState> formkey = GlobalKey<FormState>();
String? box1;
String? box2;
String? box3;
String? box4;
String? box5;
String? box6;


class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(

          children: 
          [   
            
            
            
            
            Container(
            
          
              child: Column(
                
                children: [
                    Container(
                            child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SingnUpScreen(),
                                      ));
                                },
                                child: Text("Back", style: skipText),
                              ),
                            ),
                          ],
                        )),
              SizedBox(height: 20,),
                
                
                    Text(
                    "Phone Verification",
                    style: headingText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                        "Enter your otp code",
                        style: subheadingText1,
                        textAlign: TextAlign.center),
                  ),
                
                  SizedBox(height: 50,),
                
                
                
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                
                      key: formkey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                               
                                 onChanged: (value) {
                                if (value.length == 1){
                                  
                                  FocusScope.of(context).nextFocus();
                
                                }
                                 else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue) {box1 = newValue;},
                    
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                          //////////////////////
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                              onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                                 else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue) {box2 = newValue;},
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                          /////////////////////////////
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                    
                                   onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                                 else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue) {box3 = newValue;},
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                          //////////////////////////////////
                          Container(
                            
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                    
                                 onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                                 else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue) {box4 = newValue;},
                    
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                          /////////////////////////
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                    
                                   onChanged: (value) {
                                if (value.length == 1){
                                 FocusScope.of(context).nextFocus();
                                }
                                else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue) {box5 = newValue;},
                    
                    
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: grey,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: TextFormField(
                    
                                   onChanged: (value) {
                                if (value.length == 1){
                                 null;
                                }
                                else{FocusScope.of(context).previousFocus();}
                              },
                              onSaved: (newValue)  {box6 = newValue;},
                    
                    
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                              style: headingText,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [LengthLimitingTextInputFormatter(1)],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    
                  ),
                 
                
                   
                      
                
                
                ],
              ),
            ),
           
  Positioned(
    bottom: MediaQuery.of(context).viewInsets.bottom+20,
    child: Container(
    
                    height: 54, 
                    width: 340,   
                      
                          
                          child: InkWell(
                            
                                  onTap: () {
                           
                                    if (formkey.currentState?.validate() == true ){
                           
                                      formkey.currentState!.save();
                                      String otp = box1!+box2!+box3!+box4!+box5!+box6!;
                           
                                       Provider.of<Userprovider>(context, listen: false).verifyotp(otp);
                                      print(otp);
                                          Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => passwordscreen(),
                                      ));
                           
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => OtpScreen(),
                                      //     ));
                                  
                                    }
                           
                                   
                                   
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => SingnUpScreen(),
                                    //     ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: green,
                                          borderRadius: BorderRadius.circular(10)),
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 15),
                                        child: Text(
                                          "Verify",
                                          style: normaltext,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        ),
  ),
                 
            ]
        ),
        ),
      );

  }
}
