import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/customPaint.dart';
import 'package:flutter_screens/newCheck_in/utiltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class NudjHealthHome extends StatefulWidget {
  const NudjHealthHome({Key? key}) : super(key: key);

  @override
  State<NudjHealthHome> createState() => _NudjHealthHomeState();
}

class _NudjHealthHomeState extends State<NudjHealthHome> {

  late List<Itemslist> _userModel = [];
  void _getData()async{
    _userModel = await ApiService().getItems();
    Future.delayed(Duration(seconds: 2));
  }
  @override
  void initState() {
    ApiService().getItems();
    super.initState();
  }
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      // return SizedBox(
      //   width: 100,
      //   height: 100,
      //   child: ElevatedButton(onPressed: (){
      //     inputfun(30);
      //     chartfetch();
      //     print("${l1[0].id}");
      //     print("${l1[1].id}");
      //     print("${l1[2].id}");
      //     print("${l1[0].price}");
      //     print("${l1[1].price}");
      //     print("${l1[2].price}");
      //   },
      //     child: Text("Start"),),
      // );
      return _mNudjHome();
    });
  }

  //looping practice
  void inputfun(int a) {
    int random = 20;
    //int c = a-random;
    int ans = (a - random);
    print("${ans}**35");
    ans.abs();
    print("${ans.abs()}**37");

    // while(ans.abs() != 0) {
    for (int i = ans.abs(); i > 0; i--) {
      ans = (i - random);
      ans.abs();
      print("${ans.abs()}**41");
    }
    if (a != null && a == random) {
      print("You found Random number");
    }
  }

  _mNudjHome() {
    int _selectedIndex = 0;
    double valuePer = 50;
    double bloodPresure = 10;
    ApiService apiService = ApiService();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    DateTime date = DateTime.now();
    String currentdate = DateFormat('EE, d MMM y').format(date);
    String currentdateforwellness = DateFormat(' MMM d y').format(date);

    return Scaffold(
      backgroundColor: Color(0xffF0F1F2),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 60,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle), label: 'Learn'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garry'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        onTap: (value) {
          setState(() {
            _selectedIndex = 1;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.sp),
                  bottomRight: Radius.circular(40.sp)),
              child: Container(
                width: screenWidth,
                height: 320.sp,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xff5C358A),
                  Color(0xff5C358A),
                  Color(0xff823ED2)
                ])),
                //color: Color(0xff5C358A),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Container(
                        //     child: Row(
                        //   children: [
                        //     Icon(
                        //       Icons.calendar_today_outlined,
                        //       size: 34.sp,
                        //       color: Colors.white,
                        //     ),
                        //     Text(
                        //       " $currentdate",
                        //       style:
                        //           TextStyle(color: Colors.white, fontSize: 16),
                        //     )
                        //   ],
                        // )), //calender
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.bell,
                              color: Colors.white,
                              size: 36.sp,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      width: 299.sp,
                      height: 65.sp,
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60.sp,
                            width: 60.sp,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Image.network(
                                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png")),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 6.sp,
                              ),
                              Text("Hello, Connie!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp)),
                              SizedBox(
                                height: 6.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff6E44A0),
                                        borderRadius:
                                            BorderRadius.circular(20.sp)),
                                    height: 24.sp,
                                    child: Center(
                                        child: Text(
                                      "Collaborative Care",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11.sp,
                                          color: Color(0xffFFFFFF)),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff6E44A0),
                                        borderRadius:
                                            BorderRadius.circular(20.sp)),
                                    height: 24.sp,
                                    child: Center(
                                        child: Text(
                                      "Stress Management ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11.sp,
                                          color: Color(0xffFFFFFF)),
                                    )),
                                  )
                                ],
                              ),
                              // Text(
                              //   "Collaborative Care & Chronic Care",
                              //   style: TextStyle(
                              //       color: Colors.white,
                              //       fontSize: 12,
                              //       fontWeight: FontWeight.w400),
                              // )
                            ],
                          ),
                        ],
                      ),
                    ), //name container
                    SizedBox(
                      height: 20.sp,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //           color: CupertinoColors.white,
                    //           borderRadius: BorderRadius.circular(20.sp)),
                    //       height: 24.sp,
                    //       width: 81.sp,
                    //       child: Center(
                    //           child: Text(
                    //         "My Team",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14.sp,
                    //             color: Color(0xff324164)),
                    //       )),
                    //     ),
                    //     SizedBox(
                    //       width: 10.sp,
                    //     ),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //           color: CupertinoColors.white,
                    //           borderRadius: BorderRadius.circular(20.sp)),
                    //       height: 24.sp,
                    //       //width: 81.sp,
                    //       child: Center(
                    //           child: Text(
                    //         "Crisis Hotlines",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14.sp,
                    //             color: Color(0xff324164)),
                    //       )),
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    // CustomPaint(
                    //   painter: DottedLine(),
                    // ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           "Next Appointment",
                    //           style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 14,
                    //               fontWeight: FontWeight.w400),
                    //         ),
                    //         Text("$currentdate",
                    //             style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 14,
                    //                 fontWeight: FontWeight.w400))
                    //       ],
                    //     ),
                    //     SizedBox(width: 120.sp),
                    //     Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           "Upcoming Class",
                    //           style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 14,
                    //               fontWeight: FontWeight.w400),
                    //         ),
                    //         Text("$currentdate",
                    //             style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 14,
                    //                 fontWeight: FontWeight.w400))
                    //       ],
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 260.sp),
              child: Container(
                width: 330.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.sp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 120.sp),
                      child: Text(
                        "Health Metrics",
                        style: FontFamily.nsBlue20_700,
                      ),
                    ),
                    Container(
                      width: 300.sp,
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _horizontalMetrics(
                                screenHeight, screenWidth, valuePer),
                            //Goal Container
                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 164.sp,
                              width: 157.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffB5C8EF),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(Icons.bar_chart),
                                        ),
                                        Text(
                                          "Device \n Measurements",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "135/89",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 20.sp,
                                      ),
                                      Text(
                                        "Blood Pressure",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "120lbs",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 20.sp,
                                      ),
                                      Text(
                                        "Weight",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "135/89",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 20.sp,
                                      ),
                                      Text(
                                        "Glucose",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 26.sp,
                                        width: 54.sp,
                                        decoration: BoxDecoration(
                                          color: Color(0xffC0D2FD),
                                          borderRadius:
                                              BorderRadius.circular(30.sp),
                                        ),
                                        child: Center(
                                            child: Text(
                                          "79",
                                        )),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "measured",
                                            style: FontFamily.nsBlack10_600,
                                          ),
                                          Text(
                                            "${currentdateforwellness}",
                                            style: FontFamily.nsBlack14_600,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //Device Measure
                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDCC7EF),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(
                                              Icons.medication_liquid_sharp),
                                        ),
                                        SizedBox(
                                          width: 5.sp,
                                        ),
                                        Text(
                                          "Blood\n Pressure",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "135/89",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Container(
                                        width: 43.sp,
                                        height: 20.sp,
                                        decoration: BoxDecoration(
                                            color: Color(0xffC0D2FD),
                                            borderRadius:
                                                BorderRadius.circular(20.sp)),
                                        child: Center(
                                            child: Text(
                                          "78",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.arrowtriangle_down_fill,
                                        size: 9.sp,
                                        color: Color(0xff709D10),
                                      ),
                                      Text(
                                        "-14 since last 30 days",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp,
                                            color: Color(0xff709D10)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //for(var a in l1)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "High",
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          for (var a in l1)
                                            Row(
                                              //mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[1].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[1].price,
                                                      dx1: 10,
                                                      dx2: 10,
                                                      dy1: 10,
                                                      dy2: 10),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[0].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[0].price,
                                                      dx1: 20,
                                                      dx2: 20,
                                                      dy1: 20,
                                                      dy2: 20),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[2].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[2].price,
                                                      dx1: 30,
                                                      dx2: 30,
                                                      dy1: 30,
                                                      dy2: 30),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[0].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[0].price,
                                                      dx1: 40,
                                                      dx2: 40,
                                                      dy1: 40,
                                                      dy2: 40),
                                                ),
                                              ],
                                            ),
                                          SizedBox(
                                            height: 50.sp,
                                          ),
                                          Text(
                                            "Low",
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50.sp,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 40.sp),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "measured",
                                              style: FontFamily.nsBlack10_600,
                                            ),
                                            Text(
                                              "${currentdateforwellness}",
                                              style: FontFamily.nsBlack14_600,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //Blood Pressure

                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDCC7EF),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(
                                              Icons.medication_liquid_sharp),
                                        ),
                                        SizedBox(
                                          width: 5.sp,
                                        ),
                                        Text(
                                          "Weight",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // Column(
                                      //   crossAxisAlignment: CrossAxisAlignment.center,
                                      //   mainAxisAlignment: MainAxisAlignment.start,
                                      //   children: [
                                      //     Text("High",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400),),
                                      //     for(var a in l1)
                                      //       Row(
                                      //         //mainAxisAlignment: MainAxisAlignment.start,
                                      //         children: [
                                      //           CustomPaint(
                                      //             painter: BarChart(
                                      //                 bloodPressure: l1[1].id,
                                      //                 barColor: Color(0xff5FC3F0),
                                      //                 db1: 50,
                                      //                 db2: l1[1].price,
                                      //                 dx1: 10,
                                      //                 dx2: 10,
                                      //                 dy1: 10,
                                      //                 dy2: 10),
                                      //           ),
                                      //           CustomPaint(
                                      //             painter: BarChart(
                                      //                 bloodPressure: l1[0].id,
                                      //                 barColor: Color(0xff5FC3F0),
                                      //                 db1: 50,
                                      //                 db2: l1[0].price,
                                      //                 dx1: 20,
                                      //                 dx2: 20,
                                      //                 dy1: 20,
                                      //                 dy2: 20),
                                      //           ),
                                      //           CustomPaint(
                                      //             painter: BarChart(
                                      //                 bloodPressure: l1[2].id,
                                      //                 barColor: Color(0xff5FC3F0),
                                      //                 db1: 50,
                                      //                 db2: l1[2].price,
                                      //                 dx1: 30,
                                      //                 dx2: 30,
                                      //                 dy1: 30,
                                      //                 dy2: 30),
                                      //           ),
                                      //           CustomPaint(
                                      //             painter: BarChart(
                                      //                 bloodPressure: l1[0].id,
                                      //                 barColor: Color(0xff5FC3F0),
                                      //                 db1: 50,
                                      //                 db2: l1[0].price,
                                      //                 dx1: 40,
                                      //                 dx2: 40,
                                      //                 dy1: 40,
                                      //                 dy2: 40),
                                      //           ),
                                      //         ],
                                      //       ),
                                      //     SizedBox(height: 50.sp,),
                                      //     Text("Low",style: TextStyle(fontSize: 9.sp,fontWeight: FontWeight.w400),),
                                      //   ],
                                      // ),
                                      Text(
                                        "120",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 26.sp),
                                      ),
                                      Text(
                                        "lbs",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 0.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "measured",
                                            style: FontFamily.nsBlack10_600,
                                          ),
                                          Text(
                                            "${currentdateforwellness}",
                                            style: FontFamily.nsBlack14_600,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //weight

                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDCC7EF),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(
                                              Icons.medication_liquid_sharp),
                                        ),
                                        SizedBox(
                                          width: 5.sp,
                                        ),
                                        Text(
                                          "Blood Glucose",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "85",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Container(
                                        width: 43.sp,
                                        height: 20.sp,
                                        decoration: BoxDecoration(
                                            color: Color(0xffC0D2FD),
                                            borderRadius:
                                                BorderRadius.circular(20.sp)),
                                        child: Center(
                                            child: Text(
                                          "78",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        )),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        CupertinoIcons.arrowtriangle_down_fill,
                                        size: 9.sp,
                                        color: Color(0xff709D10),
                                      ),
                                      Text(
                                        "-14 since last 30 days",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp,
                                            color: Color(0xff709D10)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //for(var a in l1)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "High",
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          for (var a in l1)
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[1].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[1].price,
                                                      dx1: 10,
                                                      dx2: 10,
                                                      dy1: 10,
                                                      dy2: 10),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[0].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[0].price,
                                                      dx1: 20,
                                                      dx2: 20,
                                                      dy1: 20,
                                                      dy2: 20),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[2].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[2].price,
                                                      dx1: 30,
                                                      dx2: 30,
                                                      dy1: 30,
                                                      dy2: 30),
                                                ),
                                                CustomPaint(
                                                  painter: BarChart(
                                                      bloodPressure: l1[0].id,
                                                      barColor:
                                                          Color(0xff5FC3F0),
                                                      db1: 50,
                                                      db2: l1[0].price,
                                                      dx1: 40,
                                                      dx2: 40,
                                                      dy1: 40,
                                                      dy2: 40),
                                                ),
                                              ],
                                            ),
                                          SizedBox(
                                            height: 50.sp,
                                          ),
                                          Text(
                                            "Low",
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50.sp,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 40.sp),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "measured",
                                              style: FontFamily.nsBlack10_600,
                                            ),
                                            Text(
                                              "${currentdateforwellness}",
                                              style: FontFamily.nsBlack14_600,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDCC7EF),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(Icons.bar_chart),
                                        ),
                                        Text(
                                          "Wellness\n Assessments",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.sp),
                                    child: Text(
                                      "GAD",
                                      style: FontFamily.nsBlack18_400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.sp),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons
                                              .arrowtriangle_down_fill,
                                          color: Colors.red,
                                          size: 13,
                                        ),
                                        Text(
                                          "-2 since last measurement",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                            color: Color(0xff10121C),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 48.sp),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "measured",
                                            style: FontFamily.nsBlack10_600,
                                          ),
                                          Text(
                                            "${currentdateforwellness}",
                                            style: FontFamily.nsBlack14_600,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //GAD
                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFEE8B2),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(Icons.bar_chart),
                                        ),
                                        Text(
                                          "Wellness\n Assessments",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.sp),
                                    child: Text(
                                      "PHQ-9",
                                      style: FontFamily.nsBlack18_400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.sp),
                                    child: Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.arrowtriangle_up_fill,
                                          color: Colors.green,
                                          size: 13,
                                        ),
                                        Text(
                                          "-2 since last measurement",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "6",
                                        style: TextStyle(
                                            color: Color(0xff10121C),
                                            fontWeight: FontWeight.w300,
                                            fontSize: 48.sp),
                                      ),
                                      SizedBox(
                                        width: 20.sp,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "measured",
                                            style: FontFamily.nsBlack10_600,
                                          ),
                                          Text(
                                            "${currentdateforwellness}",
                                            style: FontFamily.nsBlack14_600,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            //PHQ
                            SizedBox(
                              width: 10.sp,
                            ),
                            Container(
                              height: 174.sp,
                              width: 167.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 30.sp,
                                          width: 30.sp,
                                          decoration: BoxDecoration(
                                              color: Color(0xffFEE8B2),
                                              borderRadius:
                                                  BorderRadius.circular(30.sp)),
                                          child: Icon(
                                              Icons.emoji_emotions_outlined),
                                        ),
                                        Text(
                                          "Mood",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.sp,
                                  ),
                                  Center(
                                    child: Text(
                                      "Good",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Center(
                                      child: Icon(
                                    CupertinoIcons.smiley_fill,
                                    size: 48.sp,
                                    color: Color(0xffFFCE5C),
                                  )),
                                ],
                              ),
                            ),
                            //Mood
                          ],
                        ),
                      ),
                    ), //Health metrics
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 300.sp,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Appointments & Classes",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Color(0xff324164)),
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(20.sp),
                                  ),
                                  width: 290.sp,
                                  height: 108.sp,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Container(
                                        height: 44.sp,
                                        width: 44.sp,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xff5C358A),
                                              Color(0xff823ED2)
                                            ]),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20.sp,
                                            child: Text(
                                              "Wellness Assessments ",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Nov 21 1:00 PM PT - 2:00 PM PT",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3E4857),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(20.sp),
                                  ),
                                  width: 290.sp,
                                  height: 108.sp,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Container(
                                        height: 44.sp,
                                        width: 44.sp,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xff5C358A),
                                              Color(0xff823ED2)
                                            ]),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.sp,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20.sp,
                                            child: Text(
                                              "Confidence, Desire, Identity",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            "Nov 23 1:00 PM PT - 2:00 PM PT",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff3E4857),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ), //Middle container
                    SizedBox(
                      height: 10.sp,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.sp),
                          gradient: LinearGradient(
                              colors: [Color(0xff5C358A), Color(0xff823ED2)])),
                      child: SizedBox(
                        width: 280.sp,
                        height: 50.sp,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.book_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Log Journal",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Container(
                      height: 530.sp,
                      width: 350.sp,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Live Classes",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "See All",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13.sp,
                                        color: Color(0xff3E4857)),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  height: 120.sp,
                                  width: 280.sp,
                                  color: Colors.red,
                                  child: FutureBuilder<List<Itemslist>>(
                                      future: postFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          print("Waiting");
                                          return CircularProgressIndicator();
                                        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                                          print("${snapshot.hasData}");
                                          final itm = snapshot.data!;
                                          print("${itm}**SnapShot Data1541");
                                          return buildpost(itm);
                                        } else if (snapshot.hasError) {
                                          print(
                                              "${snapshot.data.toString()}SnapShotData 1542");
                                          return Text(
                                              "${snapshot.error}Error Occured");
                                        } else {
                                          // print("${buildpost(snapshot.data)}");
                                          return const Text("No Data available");
                                        }
                                      }),
                                ),
                              ),
                            ],
                          )
                          // Column(
                          //   children: [
                          //     _tailContainers(
                          //         contcolors: Color(0xffF6F7F8),
                          //         circlecolor1: Color(0xffDCEBFA),
                          //         circlecolor2: Color(0xff324164),
                          //         headtext: "Device Readings Transmission",
                          //         subtext: "18 Day Streak"),
                          //     SizedBox(
                          //       height: 10.sp,
                          //     ),
                          //     _tailContainers(
                          //         contcolors: Color(0xffF6F7F8),
                          //         circlecolor1: Color(0xffE1BFFA),
                          //         circlecolor2: Color(0xff7337AF),
                          //         headtext: "Appointments Adherence ",
                          //         subtext: "4 Complete, 0 Cancellations"),
                          //     SizedBox(
                          //       height: 10.sp,
                          //     ),
                          //     _tailContainers(
                          //         contcolors: Color(0xffF6F7F8),
                          //         circlecolor1: Color(0xffA8E6E9),
                          //         circlecolor2: Color(0xff00A0AA),
                          //         headtext: "Journal Entry",
                          //         subtext: "64 Day Streak"),
                          //     SizedBox(
                          //       height: 10.sp,
                          //     ),
                          //     _moodContainer()
                          //   ],
                          // )
                        ],
                      ),
                    ), //tailContainer
                    SizedBox(
                      height: 5.sp,
                    ),
                    SizedBox(
                      width: 330.sp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Resources",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp,
                                color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff555F6E)),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      width: 330.sp,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _imageContainer(
                              tileimage: NetworkImage(
                                  "https://media.istockphoto.com/id/1387256378/photo/shot-of-a-sporty-young-man-exercising-with-a-dumbbell-in-a-gym.jpg?s=1024x1024&w=is&k=20&c=S1d3t7zK_u2oHbJgwj7Q03KDH1G8adWI96mv9rJ0NF8="),
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            _imageContainer(
                              tileimage: NetworkImage(
                                  "https://media.istockphoto.com/id/1387256378/photo/shot-of-a-sporty-young-man-exercising-with-a-dumbbell-in-a-gym.jpg?s=1024x1024&w=is&k=20&c=S1d3t7zK_u2oHbJgwj7Q03KDH1G8adWI96mv9rJ0NF8="),
                            ),
                            SizedBox(
                              width: 10.sp,
                            ),
                            _imageContainer(
                              tileimage: NetworkImage(
                                  "https://media.istockphoto.com/id/1387256378/photo/shot-of-a-sporty-young-man-exercising-with-a-dumbbell-in-a-gym.jpg?s=1024x1024&w=is&k=20&c=S1d3t7zK_u2oHbJgwj7Q03KDH1G8adWI96mv9rJ0NF8="),
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
        ),
      ),
    );
  }

  buildpost(List<Itemslist> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          //final item = items[index];
          return Container(
            color: Colors.green.shade100,
            height: 100.sp,
            width: 250.sp,
            child: Row(
              children: [
                 // Text("${_getData()}"),
                 // Text(_getData()),
                 // Text(item.category),
              ],
            ),
          );
        });
  }



  _horizontalMetrics(double screenHeight, double screenWidth, double valuePer) {
    return Container(
      height: 164.sp,
      width: 157.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp), color: Color(0xffF6F7F8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Container(
                  height: 30.sp,
                  width: 30.sp,
                  decoration: BoxDecoration(
                      color: Color(0xffFEE8B2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.gps_fixed_outlined),
                ),
                Text(
                  "Goal",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "23",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                "of",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text(
                "27",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                "Completed",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          ),
          Stack(
            children: [
              CustomPaint(
                size: Size(screenHeight * 0.25, screenWidth * 0.25),
                painter: CircleProgress(valuePer),
                // painter: ProgressCircular(
                //     percentage: valuePer,progresscolorone: Colors.green),
              ),
              Positioned(
                  left: 60,
                  top: 30,
                  child: Column(
                    children: [
                      Text(
                        "${valuePer.toInt()}%",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: Colors.black),
                      ),
                      Text("Completed", style: FontFamily.nsGrey16_600),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  _moodContainer() {
    return SizedBox(
      width: 330.sp,
      child: Container(
        height: 108.sp,
        width: 376.sp,
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(12.sp)),
        child: Row(
          children: [
            SizedBox(
              width: 10.sp,
            ),
            Container(
              height: 66.sp,
              width: 66.sp,
              decoration: BoxDecoration(
                  color: Color(0xffF6F2E6),
                  //borderRadius: BorderRadius.circular(66.sp),
                  shape: BoxShape.circle),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 44.sp,
                      width: 44.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffE49441),
                          //borderRadius: BorderRadius.circular(66.sp),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mood Traker",
                  style: FontFamily.nsBlue16_600,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Container(
                      height: 25.sp,
                      width: 77.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffFFE6CC),
                          borderRadius: BorderRadius.circular(12.sp)),
                      child: Center(
                          child: Text(
                        "Neutral",
                        style: FontFamily.nsGreyP12_600,
                      )),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      color: Colors.grey,
                      size: 14.sp,
                    ),
                    Container(
                      height: 25.sp,
                      width: 77.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffE1D0EF),
                          borderRadius: BorderRadius.circular(12.sp)),
                      child: Center(
                          child: Text(
                        "Happy",
                        style: FontFamily.nsGreyP12_600,
                      )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _imageContainer({required ImageProvider tileimage}) {
    return Container(
      height: 174.sp,
      width: 167.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          color: Colors.transparent),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20.sp),
          child: Image(
            fit: BoxFit.fill,
            image: tileimage,
          )),
    );
  }

  _middlecontainer({required String headingtext}) {
    return Container(
      height: 73.sp,
      width: 105.sp,
      decoration: BoxDecoration(
        color: Color(0xff324164),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 24.sp,
            width: 24.sp,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.sp)),
            child: Icon(
              Icons.calendar_today,
              color: Color(0xff324164),
              size: 16.sp,
            ),
          ),
          SizedBox(
            height: 3.sp,
          ),
          Text(
            headingtext,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 10.sp),
          )
        ],
      ),
    );
  }

  _tailContainers(
      {required Color contcolors,
      required Color circlecolor1,
      required Color circlecolor2,
      required String headtext,
      required String subtext}) {
    return SizedBox(
      width: 330.sp,
      child: Container(
        height: 108.sp,
        width: 356.sp,
        decoration: BoxDecoration(
            color: contcolors, //Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(12.sp)),
        child: Row(
          children: [
            SizedBox(
              width: 10.sp,
            ),
            Container(
              height: 66.sp,
              width: 66.sp,
              decoration: BoxDecoration(
                  color: circlecolor1, //Color(0xffDCEBFA),
                  //borderRadius: BorderRadius.circular(66.sp),
                  shape: BoxShape.circle),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 44.sp,
                      width: 44.sp,
                      decoration: BoxDecoration(
                          color: circlecolor2,
                          //Color(0xff324164),
                          //borderRadius: BorderRadius.circular(66.sp),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.sp,
                  child: Text(headtext, style: FontFamily.nsBlue16_600
                      //TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                      ),
                ),
                Text(
                  subtext,
                  style: FontFamily.nsGrey16_500,
                  // style: TextStyle(
                  //     fontSize: 16.sp,
                  //     fontWeight: FontWeight.w500,
                  //     color: Color(0xff555F6E),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DottedLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.purple.shade300;
    paint.strokeCap = StrokeCap.square;
    paint.strokeWidth = 2;
    for (double i = -300; i < 300; i = i + 15) {
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 8, 0.0), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class BarChart extends CustomPainter {
  int bloodPressure;
  Color barColor;
  double dx1;
  double dy1;
  double dx2;
  double dy2;
  double db1;
  double db2;

  BarChart(
      {required this.bloodPressure,
      required this.barColor,
      required this.dx1,
      required this.dx2,
      required this.dy1,
      required this.dy2,
      required this.db1,
      required this.db2});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.grey.shade300;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 5;
    canvas.drawLine(Offset(dx1, 50), Offset(dy1, 10), paint);

    paint.color = barColor;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 5;
    canvas.drawLine(Offset(dx2, db1), Offset(dy2, db2), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class ProgressCircular extends CustomPainter {
  double percentage;
  Color progresscolorone;

  ProgressCircular({
    required this.percentage,
    required this.progresscolorone,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..strokeCap = StrokeCap.square
      ..color = progresscolorone
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7.5;
    Offset offset = Offset(0, 0);
    double radius = 2 * pi;
    canvas.drawCircle(offset, radius, paint1);

    final paint2 = Paint()
      ..strokeCap = StrokeCap.square
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7.5;
    Offset offsetone = Offset(0, 0);
    double radiusin = percentage;
    Rect rect = Rect.fromCenter(center: offsetone, width: 100, height: 100);
    canvas.drawArc(rect, 2 * pi, pi, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Itemslist {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  //final NetworkImage image;
  final Map<String, dynamic> rating;

  Itemslist(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      //required this.image,
      required this.rating});

  factory Itemslist.fromJson(Map<String, dynamic> json) {
    return Itemslist(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        //image: json['image'],
        rating: json['rating']);
  }

// chartfetch(
// List<Itemslist> iteml) {
//   for (var item in iteml) {
//     print("${item.id} - ${item.title}");
//     print("Price: ${item.price}");
//     print("Description: ${item.description}");
//     print("Category: ${item.category}");
//     print("Rating: ${item.rating}");
//   }
//}
}

// chartfetch() {
//   print("${l1[0].id}**1276");
//   print("${l1[1].id}**1277");
//   print("${l1[2].id}**1278");
//   print("${l1[0].price}**1279");
//   print("${l1[1].price}**1280");
//   print("${l1[2].price}**1281");
// }

List<Itemslist> l1 = [
  Itemslist(
      id: 1,
      title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      price: 40,
      description:
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      category: "men's clothing",
      //image: NetworkImage("https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
      rating: {"rate": 3.9, "count": 120}),
  Itemslist(
      id: 2,
      title: "Mens Casual Premium Slim Fit T-Shirts ",
      price: 30,
      description:
          "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
      category: "men's clothing",
      //image: NetworkImage("https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"),
      rating: {"rate": 4.1, "count": 259}),
  Itemslist(
      id: 3,
      title: "Mens Cotton Jacket",
      price: 20,
      description:
          "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
      category: "men's clothing",
      //image: NetworkImage("https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg"),
      rating: {"rate": 4.7, "count": 500})
];

Future<List<Itemslist>> postFuture = ApiService().getItems();

class ApiService {
  String apiUrl = "https://fakestoreapi.com/products";

  Future<List<Itemslist>> getItems() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Iterable jsonResponse = json.decode(response.body);
      List<Itemslist> iList =
          jsonResponse.map((json) => Itemslist.fromJson(json)).toList();
      return iList;
    } else {
      print("${response.statusCode}responce Status code");
      print("${response.body}responce Status code");
      print("${response.reasonPhrase}responce Status code");
      throw "Unable to throw ";
    }
  }
}

// String getUserQuery = r '''
// query{

//    String getUserQuery = r'''
//    query {
// countries {
// name
// }
// }''';
//
//
// {
// "data": {
// "countries": [
// {
// "name": "Andorra"
// },
// {
// "name": "United Arab Emirates"
// },
//
// {
// "name": "South Korea"
// },
// {
// "name": "Kuwait"
// },
// {
// "name": "Cayman Islands"
// },
// {
// "name": "Kazakhstan"
// },
// {
// "name": "Laos"
// },
// {
// "name": "Lebanon"
// },
// {
// "name": "Saint Lucia"
// },
// {
// "name": "Liechtenstein"
// },
// {
// "name": "Sri Lanka"
// },
// {
// "name": "Liberia"
// },
// {
// "name": "Lesotho"
// },
// {
// "name": "Lithuania"
// },
// {
// "name": "Luxembourg"
// },
// {
// "name": "Latvia"
// },
// {
// "name": "Libya"
// },
// {
// "name": "Morocco"
// },
// {
// "name": "Monaco"
// },
// {
// "name": "Moldova"
// },
// {
// "name": "Myanmar [Burma]"
// },
// {
// "name": "Mongolia"
// },
// {
// "name": "Macao"
// },
// {
// "name": "Malawi"
// },
// {
// "name": "Mexico"
// },
// {
// "name": "Malaysia"
// },
// {
// "name": "Mozambique"
// },
// {
// "name": "Namibia"
// },
// {
// "name": "New Caledonia"
// },
// {
// "name": "Niger"
// },
// {
// "name": "Norfolk Island"
// },
// {
// "name": "Nigeria"
// },
// {
// "name": "Nicaragua"
// },
// {
// "name": "Netherlands"
// },
// {
// "name": "Norway"
// },
// {
// "name": "Nepal"
// },
// {
// "name": "Nauru"
// },
// {
// "name": "Niue"
// },
// {
// "name": "New Zealand"
// },
// {
// "name": "Oman"
// },
// {
// "name": "Panama"
// },
// {
// "name": "Peru"
// },
//
// {
// "name": "Senegal"
// },
// {
// "name": "Somalia"
// },
// {
// "name": "Suriname"
// },
// {
// "name": "South Sudan"
// },
// {
// "name": "São Tomé and Príncipe"
// },
// {
// "name": "Tokelau"
// },
// {
// "name": "East Timor"
// },
// {
// "name": "Turkmenistan"
// },
// {
// "name": "Tunisia"
// },
// {
// "name": "Tonga"
// },
// {
// "name": "Turkey"
// },
// ]
// }
// }

// void main(){
//   Car volvo = Car(num1:5,num2:10,handbrake :true);
//   print(volvo.sayHello());
//   print(addition(5,10));
//   print(subraction(volvo,10));
//   print(multiply());
// }
// class Car{
//   int num1;
//   int num2;
//   bool handbrake;
//   Car({required this.num1,required this.num2, required this.handbrake});
//   sayHello(){
//     print('Hello, my name is $num1 and I am $num2 years old.');
//   }
// }
//
// List<Car> l1 = [Car(num1:1,num2:2,handbrake:true),
//   Car(num1:10,num2:20,handbrake:false)];
//
// int addition(int a, int b){
//   return a+b;
// }
//
// subraction(Car innova,int c){
//   return innova.num2-c;
// }
//
// multiply(){
//   for(var list1 in l1){
//     list1;
//   }
//}
