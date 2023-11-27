import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'package:syncfusion_flutter_gauges/gauges.dart';

class thirdCheckin extends StatefulWidget {
  thirdCheckin({Key? key}) : super(key: key);

  @override
  State<thirdCheckin> createState() => _thirdCheckinState();
}

class _thirdCheckinState extends State<thirdCheckin> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return _mcheckIn3();
    });
  }

  _mcheckIn3() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF0F1F2),
          body: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 30.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6.sp,
              ),
              Expanded(
                child: Center(
                  child: Container(
                    //padding: EdgeInsets.only(left: 10,right: 30),
                    //color: Colors.red,
                    height: screenHeight * 90 / 100,
                    width: screenWidth * 92 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffFFFFFF),
                    ),
                    child: SingleChildScrollView(
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 30.sp, left: 10.sp, bottom: 10.sp),
                            child: Container(
                              child: Row(
                                children: [
                                  _pieChart(),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  _sfCircularChart(),
                                  //_radialGauge(),
                                  // Container(
                                  //   width: 140
                                  //   ,height: 80,
                                  //   //child: _radialGauge(),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 150.sp, left: 10.sp, right: 10.sp),
                            child: Container(
                                //padding: EdgeInsets.only(top: 340.sp),
                                height: screenHeight * 14 / 100,
                                width: screenWidth * 90 / 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffF6F7F8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.sp,
                                        ),
                                        Text(
                                          "Carbs",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                        _linearPercentIndicator(
                                          color: Colors.green,
                                          lineHeight: 8.0,
                                          percent: 0.7,
                                          radius: 20.0,
                                        ),
                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Text(
                                          "271/359g",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.sp,
                                        ),
                                        Text(
                                          "Protien",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                        _linearPercentIndicator(
                                          color: Color(0xffD488DB),
                                          lineHeight: 8.0,
                                          percent: 1.0,
                                          radius: 20.0,
                                        ),
                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Text(
                                          "271/359g",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 30.sp,
                                        ),
                                        Text(
                                          "Fat",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                        _linearPercentIndicator(
                                          color: Color(0xff7757CE),
                                          lineHeight: 8.0,
                                          percent: 0.9,
                                          radius: 20.0,
                                        ),
                                        SizedBox(
                                          height: 5.sp,
                                        ),
                                        Text(
                                          "207/145g",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff5F5F5F)),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                          //child containers
                          Padding(
                            padding: EdgeInsets.only(top: 260.sp),
                            child: Container(
                              height: screenHeight * 6 / 100,
                              width: screenWidth,
                              color: Color(0xff1D88D6),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(CupertinoIcons.back)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 74.sp, right: 74.sp),
                                    child: Text(
                                      "Today,sep 08",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(CupertinoIcons.forward)),
                                ],
                              ),
                            ),
                          ),
                          //child containers
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 316.sp, left: 10.sp, right: 10.sp),
                              child: Container(
                                //padding: EdgeInsets.only(top: 340.sp),
                                height: screenHeight * 14 / 100,
                                width: screenWidth * 90 / 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xffF6F7F8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: screenWidth * 0.08),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: 0, top: 30),
                                              child: Text(
                                                "Breakfast",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 16),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "Hard Boiled Egg, Oatmeal ",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 100.sp,
                                        ),
                                        Container(
                                          height: screenHeight * 0.08,
                                          width: screenWidth * 0.1,
                                          decoration: BoxDecoration(
                                            color: Color(0xffD6AD1D),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          )),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 0, bottom: 10, left: 10),
                                      child: Container(
                                          width: screenWidth * 80 / 100,
                                          child: Divider(
                                            thickness: 2,
                                            height: 0.5,
                                          )),
                                    ),
                                    Center(
                                        child: Text(
                                      "959 kcal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ))
                                  ],
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 426.sp, left: 10.sp, right: 10.sp),
                            child: Container(
                              //padding: EdgeInsets.only(top: 340.sp),
                              height: screenHeight * 14 / 100,
                              width: screenWidth * 90 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: screenWidth * 0.08),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 0, top: 30),
                                            child: Text(
                                              "Lunch",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Rice, Fish, Mushrooms",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 120.sp,
                                      ),
                                      Container(
                                        height: screenHeight * 0.08,
                                        width: screenWidth * 0.1,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD6AD1D),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, bottom: 10, left: 10),
                                    child: Container(
                                        width: screenWidth * 80 / 100,
                                        child: Divider(
                                          thickness: 2,
                                          height: 0.5,
                                        )),
                                  ),
                                  Center(
                                      child: Text(
                                    "720 kcal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 536.sp, left: 10.sp, right: 10.sp),
                            child: Container(
                              //padding: EdgeInsets.only(top: 340.sp),
                              height: screenHeight * 14 / 100,
                              width: screenWidth * 90 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: screenWidth * 0.08),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 0, top: 30),
                                            child: Text(
                                              "Dinner",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Brown rice(cooked), Bread",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 100.sp,
                                      ),
                                      Container(
                                        height: screenHeight * 0.08,
                                        width: screenWidth * 0.1,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD6AD1D),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, bottom: 10, left: 10),
                                    child: Container(
                                        width: screenWidth * 80 / 100,
                                        child: Divider(
                                          thickness: 2,
                                          height: 0.5,
                                        )),
                                  ),
                                  Center(
                                      child: Text(
                                    "900 kcal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 646.sp, left: 10.sp, right: 10.sp),
                            child: Container(
                              //padding: EdgeInsets.only(top: 340.sp),
                              height: screenHeight * 14 / 100,
                              width: screenWidth * 90 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF6F7F8)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: screenWidth * 0.08),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 70.sp, top: 30),
                                            child: Text(
                                              "Snack",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "Chips, Corn chips",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 120.sp,
                                      ),
                                      Center(
                                        child: Container(
                                          height: screenHeight * 0.08,
                                          width: screenWidth * 0.1,
                                          decoration: BoxDecoration(
                                            color: Color(0xffD6AD1D),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, bottom: 10.sp, left: 10.sp),
                                    child: Container(
                                        width: screenWidth * 80 / 100,
                                        child: Divider(
                                          thickness: 2,
                                          height: 0.5,
                                        )),
                                  ),
                                  Center(
                                      child: Text(
                                    "700 kcal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          //Water
                          Padding(
                            padding: EdgeInsets.only(
                                top: 756.sp, left: 10.sp, right: 10.sp),
                            child: Container(
                              //padding: EdgeInsets.only(top: 340.sp),
                              height: screenHeight * 14 / 100,
                              width: screenWidth * 90 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.sp),
                                  color: Color(0xffF2FAFF)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Container(
                                    width: screenWidth * 0.7,
                                    height: screenHeight * 0.05,
                                    color: Colors.transparent,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "1.75L",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 65.sp,
                                        ),
                                        Text(
                                          "Water",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 65.sp,
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.more_horiz))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Container(
                                    width: screenWidth * 0.7,
                                    height: screenHeight * 0.05,
                                    color: Colors.transparent,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.local_drink,
                                          color: Colors.orange[300],
                                        ),
                                        SizedBox(width: 8.sp,),
                                        Icon(
                                          Icons.local_drink,
                                          color: Colors.orange[300],
                                        ),
                                        SizedBox(width: 8.sp,),
                                        Icon(
                                          Icons.local_drink,
                                          color: Colors.orange[300],
                                        ),
                                        SizedBox(width: 8.sp,),
                                        Icon(
                                          Icons.local_drink,
                                          color: Colors.orange[300],
                                        ),
                                        SizedBox(width: 8.sp,),
                                        Icon(
                                          Icons.local_drink,
                                          color: Colors.orange[300],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  _linearPercentIndicator(
      {required Color color,
      required double percent,
      required double lineHeight,
      required double radius}) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width * 0.25,
      lineHeight: lineHeight,
      percent: percent,
      barRadius: Radius.circular(radius),
      progressColor: color,
    );
  }

  _pieChart() {
    Map<String, double> dataMap = {
      'Carbs': 45,
      'Organic Foods': 55,
    };
    List<Color> colorList = [
      const Color(0xffA8CF76),
      const Color(0xff9A98DA),
    ];
    return PieChart(
      dataMap: dataMap,
      colorList: colorList,
      chartRadius: 80,
      chartLegendSpacing: 10,
      chartValuesOptions: ChartValuesOptions(
        showChartValues: false,
        showChartValueBackground: false,
        showChartValuesInPercentage: false,
        decimalPlaces: 0,
      ),
      legendOptions: LegendOptions(
          legendShape: BoxShape.rectangle,
          showLegends: true,
          showLegendsInRow: true,
          legendPosition: LegendPosition.bottom),
    );
  }

  _sfCircularChart() {
    return CircularPercentIndicator(
      radius: 50.0,
      lineWidth: 10.0,
      animation: true,
      percent: 0.6,
      center: Text(
        "60%",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
      ),
      footer: Text(
        "Water",
        style: new TextStyle(fontWeight: FontWeight.w400, fontSize: 14.0),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Color(0xff1D88D6),
    );
  }

// _scrollContainer(double screenHeight, double screenWidth) {
//   return Container(
//     //padding: EdgeInsets.only(top: 340.sp),
//     height: screenHeight *14/100,
//     width: screenWidth *90/100,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Color(0xffF6F7F8)
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             SizedBox(width: screenWidth *0.08),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right :60,top: 30),
//                   child: Text("Breakfast",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
//                 ),
//                 SizedBox(height: 8,),
//                 Text("Hard Boiled Egg, Oatmeal ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
//               ],
//             ),
//             SizedBox(width: 100,),
//             Container(
//               height: screenHeight *0.08,
//               width: screenWidth *0.1,
//               decoration: BoxDecoration(
//                 color: Color(0xffD6AD1D),
//                 shape: BoxShape.circle,
//               ),
//               child: Center(
//                   child: Icon(
//                     Icons.add,color: Colors.white,
//                   )
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height:10,),
//         Padding(
//           padding:  EdgeInsets.only(top:0,bottom: 10,left: 10),
//           child: Container(
//             width: screenWidth * 80/100,
//               child: Divider(thickness: 2,height: 0.5,)),
//         ),
//         Center(child: Text("959 kcal",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),))
//       ],
//     ),
//   );
// }
}
