import 'package:flutter/material.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';
import 'package:rideshare/screens/home.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}

class _notificationScreenState extends State<notificationScreen> {
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
                                            builder: (context) => homepage(),
                                          ));
                                    },
                                    child: Text("Back", style: skipText),
                                  ),
                                ),
          
                                SizedBox(width: 30,),
                                Text("Notification", style: skipText2,)
          
          
                              ],
                            )),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(children: [
                                    Text("Today",style:skipText ,)
                                  ],
          
                                  
                                  
                                  
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.2),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.0),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(children: [
                                    Text("Yesterday",style:skipText ,)
                                  ],
          
                                  
                                  
                                  
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.2),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                
                                ),
                                SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.0),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.0),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.2),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.0),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                    Container(width: 330,height: 97,
                                    decoration: BoxDecoration(color: green.withOpacity(0.2),borderRadius: BorderRadius.circular(5) ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(children: [
                                            Text("payment confirmed", style: skipText,)
                                            
                                          ],),
                                          Row(children: [
                                            Text("Lorem ipsum dolor sit amet consectetur.\nUltrici es tincidunt eleifend vitae",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                          Row(children: [
                                            Text("15 mins ago",style: normaltextgrey,)
                                      
                                      
                                          ],),
                                        ],
                                      ),
                                    ),
                                    
                                    )
                                  
                                  ],),
                                ),
                              ],
                            )
          ],
          
          ),
        ),
      ),
    );
  }
}