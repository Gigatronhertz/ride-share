import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/provider/userprovider.dart';
import 'package:rideshare/screens/authentication/signup.dart';
import 'package:rideshare/screens/home.dart';

class passwordscreen extends StatefulWidget {
  const passwordscreen({super.key});

  @override
  State<passwordscreen> createState() => _passwordscreenState();
}

final GlobalKey<FormState> formkey = GlobalKey<FormState>();

class _passwordscreenState extends State<passwordscreen> {
  String password = '';
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formkey,
          child: Stack(children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
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

                        //Text feild 1
                        child: TextFormField(
                          validator: (value) {
                            RegExp nameRegExp = RegExp(r'[a-zA-Z]');
                            if (value != null &&
                                nameRegExp.hasMatch(value) == true) {
                              return null;
                            } else {
                              return "please enter a name ";
                            }
                          },
                          onSaved: (newValue) {
                            password = newValue!;
                          },
                          style: normaltextblack,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "password",
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      pressed = !pressed;
                                    });
                                  },
                                  icon: pressed == true
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off))),
                          obscureText: pressed == true ? true : false,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Set your password",
                    style: headingText,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Set your password",
                        style: subheadingText1, textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              child: Container(
                height: 54,
                width: 340,
                child: InkWell(
                  onTap: () {
                    if (formkey.currentState?.validate() == true) {
                      formkey.currentState!.save();
                      print(password);
                     String email =(Provider.of<Userprovider>(context,listen:false ).user.eamil);
                        String phone =(Provider.of<Userprovider>(context,listen:false ).user.phone);
                          String name =(Provider.of<Userprovider>(context,listen:false ).user.firstName);

                      Provider.of<Userprovider>(context,listen: false).setUser(name,email,phone,newpassword: password);

                  Provider.of<Userprovider>(context,listen: false).updatefirebaseuser();
                  Provider.of<Userprovider>(context,listen: false).currentuser();
                    
                    }

                   if(Provider.of<Userprovider>(context,listen: false).verifylogin == true){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => homepage(),
                          ));
                    }
                    else{null;}
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
          ]),
        ),
      ),
    );
  }
}
