import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rideshare/components/colors.dart';
import 'package:rideshare/components/textstyle.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.7749, -122.4194), // San Francisco coordinates
            zoom: 12,
          ),
        ),
        Container(
          alignment: Alignment(0, 0.5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 54,
                        width: 172,
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(5)),
                        alignment: Alignment.center,
                        child: Text("Rental", style: normaltext),
                      ),
                    ),
                    SizedBox(
                      width: 114,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: InkWell(
                            onTap: () {},
                            child: Icon(Icons.location_searching_rounded)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 364,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: green, width: 2),
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          child: Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: green)),
                            alignment: Alignment.center,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),

                                //Text feild 1
                                child: TextFormField(
                                  onSaved: (newValue) {},
                                  style: normaltextblack,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: normaltextgrey,
                                      hintText: "Where would you like to go",
                                      prefixIcon: Icon(Icons.search_rounded),
                                      suffixIcon:
                                          Icon(Icons.favorite_outline_rounded)),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 54,
                                  width: 154,
                                  decoration: BoxDecoration(
                                      color: green,
                                      borderRadius: BorderRadius.circular(5)),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(),
                                    child: Text("Transport", style: normaltext),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (BuildContext bc) {
                                        return Container(
                                          // margin: EdgeInsets.only(

                                          //     bottom: MediaQuery.of(bc)
                                          //         .viewInsets
                                          //         .bottom ), // Keyboard margin
                                           

                                          height: 520,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Container(
                                                    height: 4,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: grey),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    icon: Icon(
                                                        Icons.close_rounded),
                                                    color: grey,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Select address",
                                                    style: skipText2,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: MediaQuery.of(bc)
                                                        .size
                                                        .width,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: grey
                                                            .withOpacity(0.2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10.0),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 58,
                                                      width: 340,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: grey),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: TextFormField(
                                                        onSaved: (newValue) {},
                                                        style: normaltextblack,
                                                        decoration:
                                                            InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                          hintStyle:
                                                              normaltextgrey,
                                                          hintText: "From",
                                                          prefixIcon: Icon(Icons
                                                              .location_searching_outlined),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10.0),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 58,
                                                      width: 340,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: grey),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: TextFormField(
                                                        onSaved: (newValue) {},
                                                        style: normaltextblack,
                                                        decoration:
                                                            InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                          hintStyle:
                                                              normaltextgrey,
                                                          hintText: "To",
                                                          prefixIcon: Icon(Icons
                                                              .location_on_outlined),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 1,
                                                    width: MediaQuery.of(bc)
                                                        .size
                                                        .width,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: grey
                                                            .withOpacity(0.2)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15.0),
                                               

                                                  child: SingleChildScrollView(
                                                    
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Recent place",
                                                              style:
                                                                  normaltextbold,
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(Icons
                                                                .location_on),
                                                            Text(
                                                              "Office",
                                                              style:
                                                                  normaltextblack,
                                                            ),
                                                            SizedBox(
                                                              width: 190,
                                                            ),
                                                            Text(
                                                              "1.1 km",
                                                              style:
                                                                  normaltextblack,
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      25.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '2972 Westheimer Rd.Santa Ana,Illinois 85486',
                                                                style:
                                                                    subheadingText1,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(Icons
                                                                .location_on),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right:170.0),
                                                              child: Text(
                                                                "Coffe shop",
                                                                style:
                                                                    normaltextblack,
                                                              ),
                                                            ),
                                                            Text(
                                                              "3.1 km",
                                                              style:
                                                                  normaltextblack,
                                                            ),
                                                          ],
                                                        ),
                                                        
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      25.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                                                                style:
                                                                    subheadingText1,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                          SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(Icons
                                                                .location_on),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right:156.0),
                                                              child: Text(
                                                                "Shoping center",
                                                                style:
                                                                    normaltextblack,
                                                              ),
                                                            ),
                                                            Text(
                                                              "1.4 km",
                                                              style:
                                                                  normaltextblack,
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      25.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                                                                style:
                                                                    subheadingText1,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                          SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(Icons
                                                                .location_on),
                                                            Padding(
                                                              padding: const EdgeInsets.only(right:158.0),
                                                              child: Text(
                                                                "Shopping mall",
                                                                style:
                                                                    normaltextblack,
                                                              ),
                                                            ),
                                                            Text(
                                                              "5.1 km",
                                                              style:
                                                                  normaltextblack,
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      25.0),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                                                                style:
                                                                    subheadingText1,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                            SizedBox(
                                                height: 20,
                                              ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              
                                            ],
                                          ),
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 54,
                                    width: 154,
                                    decoration: BoxDecoration(
                                        color: Colors.green[50],
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Text("Delivery",
                                          style: normaltextblack),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
