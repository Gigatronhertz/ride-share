import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/models/usermodel.dart';
import 'package:rideshare/provider/userprovider.dart';
import 'package:rideshare/screens/authentication/otp.dart';
import 'package:rideshare/screens/authentication/welcomescreen.dart';




class SingnUpScreen extends StatefulWidget {
  const SingnUpScreen({super.key});

  @override
  State<SingnUpScreen> createState() => _SingnUpScreenState();
}

class _SingnUpScreenState extends State<SingnUpScreen> {
  final countrypicker = FlCountryCodePicker(dialCodeTextStyle: skipText);
  CountryCode? countrycode;
  var items = [
    "male",
    "female",
    "Chair",
    "USB",
  ];
  String defaultitem = "male";

  var name;
  var email;
   String? phone;
  var gender;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();


  MyUser user = MyUser();



@override
  void initState() {


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                                  builder: (context) => WelcomeScreen(),
                                ));
                          },
                          child: Text("Back", style: skipText),
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Sign up with your email or phone number",
                        style: headingText1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                  
                                //Text feild 1
                                child: TextFormField(

                                  validator: (value){
                                     RegExp nameRegExp = RegExp(r'[a-zA-Z]');
                                    if (value != null && nameRegExp.hasMatch(value) == true){
                                    return null;
                                
                                    }
                                    else{return "please enter a name ";}

                                  },


                                  onSaved: (newValue) {
                                    name = newValue;
                                 

                                    
                                  },
                                  
                                  style: normaltextblack,
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: "Name"),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                  
                                //text form 2
                                child: TextFormField(

                                   validator: (value){
                                     RegExp nameRegExp = RegExp(  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',);
                                    if (value != null && nameRegExp.hasMatch(value) == true){
                                    return null;
                                
                                    }
                                    else{return "please enter a valid emaial ";}

                                  },
                                  onSaved: (newValue) {
                                    email = newValue;
                                    MyUser().eamil = newValue;
                                  },
                                  style: normaltextblack,
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: "Email"),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1, color: grey)),
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                  
                                  //text form 3
                                  child: Expanded(
                                      child: TextFormField(
                                         validator: (value){
                                     RegExp nameRegExp = RegExp(r'^\+?[0-9-]+$',);
                                    if (value != null && nameRegExp.hasMatch(value) == true){
                                    return null;
                                
                                    }
                                    else{return "please enter a phone number ";}

                                  },
                                          onSaved: (newValue) {
                                            phone = "[${countrycode!.dialCode}][$newValue]";
                                            String plus = "+";
                                            String finalphone = phone!.replaceAll(plus, "");
                                            phone = "[+]$finalphone";
                                          
                                          },
                                          style: normaltextblack,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Mobile number",
                                              prefixIcon: Container(
                                                width: 120,
                                                child: Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () async {
                                                        final code =
                                                            await countrypicker
                                                                .showPicker(
                                                                    context: context);
                  
                                                        setState(() {
                                                          countrycode = code;
                                                          print(countrycode);
                                                        });
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                              child:
                                                                  countrycode != null
                                                                      ? countrycode!
                                                                          .flagImage()
                                                                      : null),
                                                          Container(
                                                            child: Icon(Icons
                                                                .keyboard_arrow_down_rounded),
                                                          ),
                                                          Container(
                                                            color: Colors.black45,
                                                            width: 1,
                                                            height: 40,
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Container(
                                                            child: Text(
                                                              countrycode != null
                                                                  ? countrycode!
                                                                      .dialCode
                                                                  : "+1",
                                                              style: normaltextblack,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )))))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: DropdownButtonFormField(
                                    style: skipText,
                                    decoration: InputDecoration(
                                        hintText: "Gender",
                                        hintStyle: normaltextblack,
                                        border: InputBorder.none),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    onChanged: (String? newvalue) {})),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.check_circle_outline_outlined,
                                color: green,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                    "By signing up. you agree to the Terms of service andPrivacy policy.",
                                    style: subheadingText1,
                                    textAlign: TextAlign.center,
                                    softWrap: true),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                      onTap: () {

                        if (formkey.currentState?.validate() == true ){

                          formkey.currentState!.save();

                          Provider.of<Userprovider>(context, listen: false).setUser(name, email, phone,);
                          print(Provider.of<Userprovider>(context,listen:false ).user.eamil);
                          print(Provider.of<Userprovider>(context,listen:false ).user.phone);
                          print(Provider.of<Userprovider>(context,listen:false ).user.firstName);

                          Provider.of<Userprovider>(context, listen: false).verifyphonenummber(phone!);

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(),
                              ));
                      
                        }

                       
                       
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => SingnUpScreen(),
                        //     ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
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
                              "Sign Up",
                              style: normaltext,
                            ),
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),

                  ),
                  
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 150,
                              height: 1,
                              color: grey,
                            ),
                          ),
                          Text(
                            "or",
                            style: normaltextgrey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 150,
                              height: 1,
                              color: grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpScreen(),
                              ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Image.asset("assets/images/Gmail.png"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 30),
                                  child: Text(
                                    "Sign up with Gmail",
                                    style: normaltextblack,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Image.asset("assets/images/Facebook.png"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 30),
                                  child: Text(
                                    "Sign up with Facebook",
                                    style: normaltextblack,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                         
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: grey)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Image.asset("assets/images/Apple.png"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 30),
                                  child: Text(
                                    "Sign up with Apple",
                                    style: normaltextblack,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
          
        ),
      ),
    );
  }
}
