import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MagicSplashTwo extends StatefulWidget {
  const MagicSplashTwo({Key? key}) : super(key: key);

  @override
  State<MagicSplashTwo> createState() => _MagicSplashTwoState();
}

class _MagicSplashTwoState extends State<MagicSplashTwo> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return magicPagetwo();
    });
  }

  magicPagetwo() {
    PageController pageController = PageController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.sp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.purpleAccent),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nudj",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5.sp,
              ),
              Text(
                "Classes",
                style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff6A87D1)),
              )
            ],
          ),
          SizedBox(
            height: 5.sp,
          ),
          Text(
            "Nudj classes are an innovative program \n for a wellness program to drive good \n health and a healthy lifestyle",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff3E4857)),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Stack(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 40.sp),
                child: CustomPaint(painter: DrawTriangleOne()),
              ),
              Padding(
                padding: EdgeInsets.only(right: 120.sp,top: 90.sp,left: 0.sp),
                child: Container(
                  width: 120.sp,
                  height: 120.sp,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 80.sp),
                child: Transform.rotate(
                  angle: -15 * pi/180,
                  child: Container(
                    height: 380.sp,
                    width: 180.sp,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/S3.jpg'))),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 0.sp,),
              SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: SlideEffect(
                    spacing: 8.0.sp,
                    radius: 8.0.sp,
                    dotWidth: 10.0.sp,
                    dotHeight: 10.0.sp,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5.sp,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.purple.shade500),
              ),
              SizedBox(width: 0.sp,),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(28.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.sp),
                        gradient: LinearGradient(
                            colors: [Color(0xff5C358A), Color(0xff823ED2)])),
                    child: SizedBox(
                      width: 102.sp,
                      height: 42.sp,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {
                          //Navigator.push(context,MaterialPageRoute(builder: (context)=>MagicSplashTwo()));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawTriangleOne extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color(0xffDDE7FF);
    var path = Path();
    //path.arcToPoint(Offset(10, 0),radius: Radius.circular(10));
    path.moveTo(10, 0);
    path.lineTo(10, 280);
    path.lineTo(300, 180);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

/*
Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.purpleAccent

                        ),
                  )),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 430,
                    width: 200,
                    decoration:
                    BoxDecoration(image: DecorationImage(image: AssetImage(imagepath))),
                    ),

                  CustomPaint(painter: DrawTriangle())
                ],
              ),
              Container(
                width: 124,
                height: 124,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nudj",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Health Goals",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: Color(0xffFC9A2F)),
              )
            ],
          ),
          Text(
            "Strengthen care and improve patient \n outcomes by prescribing a healthier \n lifestyle",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff3E4857)),
          )
        ],
      ),
*/

//decoration box
/*
          DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.sp),
                          color: const Color(0xff5E239D),
                          gradient: const LinearGradient(colors: [
                            Color(0xff5C358A),
                            Color(0xff823ED2),
                          ]),
                        ),
                        child: SizedBox(
                          width: widthConst.isMobile ? 102.sp : screenWidth / 7,
                          height: widthConst.isMobile ? 42.sp : screenHeight / 13,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () {
                              if (_activePage < items.length - 1) {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              } else if (_activePage == items.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NudjHealthHome()
                                      // builder: (context) => const LoginWidget(
                                      //     title:
                                      //     CommonConstants.LOGIN_WIDGET_TITLE),
                                      ),
                                );
                              }
                            },
                            child: Text(
                              _activePage == 3 ? "Start" : "Next",
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
*/

//Tab view
/*
// magicTabPage() {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double screenHeight = MediaQuery.of(context).size.height;
//   return Scaffold(
//     backgroundColor: Colors.white,
//     body: PageView.builder(
//       controller: pageController,
//       itemCount: items.length,
//       onPageChanged: (index) {
//         setState(() {
//           _activePage = index;
//         });
//       },
//       itemBuilder: (context, index) {
//         return SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 30,
//               ),
//               SizedBox(
//                 width: 330.sp,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           pageController.jumpToPage(3);
//                         },
//                         child: const Text(
//                           'Skip',
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               color: Color(0xff5E239D)),
//                         )),
//                   ],
//                 ),
//               ),
//               //
//               if (index == 0 || index == 3)
//                 Container(
//                   height: screenHeight / 1.8,
//                   width: screenWidth / 2,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(items[index].image))),
//                 ),
//               SizedBox(
//                 height: 20.sp,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "Nudj",
//                     style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff354260)),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     items[index].title,
//                     style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                         color: items[index].color),
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 5.sp,
//               ),
//               Text(items[index].description,
//                   style: const TextStyle(
//                     height: 2,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 20,
//                     color: Color(0xff3E4857),
//                   )),
//               if (index == 1 || index == 2)
//                 SizedBox(
//                   height: 5.sp,
//                 ),
//               if (index == 1 || index == 2)
//                 Container(
//                   height: screenHeight / 1.5,
//                   width: screenWidth / 2.5,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(items[index].image))),
//                 ),
//               //
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 width: 320.sp,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     for (int i = 0; i < items.length; i++)
//                       Row(
//                         children: [
//                           Container(
//                             height: 7,
//                             width: 7,
//                             decoration: BoxDecoration(
//                                 color: _activePage == i
//                                     ? const Color(0xff5E239D)
//                                     : const Color(0xffD7BFE9),
//                                 borderRadius: BorderRadius.circular(10)),
//                           ),
//                           const SizedBox(
//                             width: 6,
//                           ),
//                         ],
//                       ),
//                     const Spacer(),
//                     DecoratedBox(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(24),
//                           color: const Color(0xff5E239D),
//                           gradient: const LinearGradient(colors: [
//                             Color(0xff5C358A),
//                             Color(0xff823ED2)
//                           ])),
//                       child: SizedBox(
//                         width: screenWidth / 7,
//                         // width: screenWidth * 0.178,//182
//                         // height: screenHeight * 0.06,//66
//                         height: screenHeight / 13,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: Colors.transparent,
//                             backgroundColor: Colors.transparent,
//                             shadowColor: Colors.transparent,
//                           ),
//                           onPressed: () {
//                             if (_activePage < items.length - 1) {
//                               pageController.nextPage(
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.ease,
//                               );
//                             } else if (_activePage == items.length - 1) {
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => const LoginWidget(
//                                       title:
//                                           CommonConstants.LOGIN_WIDGET_TITLE),
//                                 ),
//                               );
//                             }
//                           },
//                           child: Text(
//                             _activePage == 3 ? "Start" : "Next",
//                             style: const TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               )
//             ],
//           ),
//         );
//       },
//     ),
//   );
// }
*/

////Last Edited 24/11/2023////
/*
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:nudj/ui/widgets/login_widget.dart';
// import 'package:nudj/utils/common_constants.dart';
//
// class ItemList {
//   String image;
//   String title;
//   String description;
//   Color color;
//
//   ItemList(
//       {required this.image,
//       required this.title,
//       required this.description,
//       required this.color});
// }
//
// class MagicSplashScreen extends StatefulWidget {
//   const MagicSplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MagicSplashScreen> createState() => _MagicSplashScreenState();
// }
//
// class _MagicSplashScreenState extends State<MagicSplashScreen> {
//   PageController pageController = PageController();
//   int _activePage = 0;
//   //late bool _ismobile ;
//   List<ItemList> items = [
//     ItemList(
//       image: 'assets/images/S11.jpg',
//       title: "Health Goals",
//       description:
//           "Strengthen care and improve patient \n outcomes by prescribing a healthier\n lifestyle",
//       color: const Color(0xffFC9A2F),
//     ),
//     ItemList(
//       image: 'assets/images/S12.jpg',
//       title: "Classes",
//       description:
//           "Nudj classes are an innovative program \n for a wellness program to drive good \n health and a healthy lifestyle",
//       color: const Color(0xff6A87D1),
//     ),
//     ItemList(
//       image: 'assets/images/S13.jpg',
//       title: "BP Measurements",
//       description:
//           "Our top wellness care covers all your\n  wellness like BP Readings, Workouts,\n Assessments etc",
//       color: const Color(0xffA163DE),
//     ),
//     ItemList(
//         image: 'assets/images/S14.jpg',
//         title: "Wellness Care",
//         description:
//             "Our top wellness care covers all your \n wellness like BP Readings, Workouts,\n Assessments etc",
//         color: const Color(0xffFF725E)),
//   ];
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     pageController;
//     super.initState();
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     pageController;
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
//       return magicPageone();
//       // return LayoutBuilder(builder: (context, constraints) {
//       //   if (constraints.maxWidth < 600) {
//       //     return magicPageone();
//       //   } else {
//       //     return magicTabPage();
//       //   }
//       // });
//     });
//   }
//   magicPageone() {
//     WidthConst widthConst = WidthConst(true);
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: PageView.builder(
//         controller: pageController,
//         itemCount: items.length,
//         onPageChanged: (index) {
//           setState(() {
//             _activePage = index;
//           });
//         },
//         itemBuilder: (context, index) {
//           return Column(
//             children: [
//               SizedBox(
//                 height: widthConst._isMobile ? 40.sp : 30,
//               ) ,
//               widthConst._isMobile ? Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   TextButton(
//                       onPressed: () {
//                         pageController.jumpToPage(3);
//                       },
//                       child: const Text(
//                         'Skip',
//                         style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0xff5E239D)),
//                       )),
//                 ],
//               ) : SizedBox(
//                width: 330.sp,
//                child: Row(
//                  crossAxisAlignment: CrossAxisAlignment.end,
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: [
//                    TextButton(
//                        onPressed: () {
//                          pageController.jumpToPage(3);
//                        },
//                        child: const Text(
//                          'Skip',
//                          style: TextStyle(
//                              fontSize: 20,
//                              fontWeight: FontWeight.w400,
//                              color: Color(0xff5E239D)),
//                        )),
//                  ],
//                ),
//              ),
//               //
//               if (index == 0 || index == 3)
//                 Container(
//                   height: widthConst._isMobile ?  400.sp :  screenHeight / 1.8,
//                   width: widthConst._isMobile ? 320.sp : screenWidth / 2,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(items[index].image))),
//                 ),
//               SizedBox(
//                 height: widthConst._isMobile ? 20.sp : 20.sp,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                    Text(
//                     "Nudj",
//                     style: widthConst._isMobile ?  TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff354260)) : TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xff354260)),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   widthConst._isMobile ? Text(
//                     items[index].title,
//                     style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                         color: items[index].color),
//                   ) : Text(
//                     items[index].title,
//                     style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                         color: items[index].color),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 5.sp,
//               ),
//               Text(
//                   items[index].description,
//                   style: widthConst._isMobile? TextStyle(
//                     height: 2,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 16.sp,
//                     color:  Color(0xff3E4857),
//                   ) : TextStyle(
//                     height: 2,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 20,
//                     color: Color(0xff3E4857),
//                   )),
//               if (index == 1 || index == 2)
//                 SizedBox(
//                   height: 5.sp,
//                 ),
//               if (index == 1 || index == 2)
//                 Container(
//                   height: widthConst._isMobile ? 400.sp : screenHeight / 1.5,
//                   width: widthConst._isMobile ? 320.sp : screenWidth / 2.5,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(items[index].image))),
//                 ),
//               //
//                SizedBox(height: widthConst._isMobile ? 30 : 10,),
//               SizedBox(
//                 width: 320.sp,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     for (int i = 0; i < items.length; i++)
//                       Row(
//                         children: [
//                           Container(
//                             height: widthConst._isMobile ? 7.sp : 7,
//                             width: widthConst._isMobile ? 7.sp : 7,
//                             decoration: BoxDecoration(
//                                 color: _activePage == i
//                                     ? const Color(0xff5E239D)
//                                     : const Color(0xffD7BFE9),
//                                 borderRadius: widthConst._isMobile ? BorderRadius.circular(10.sp):  BorderRadius.circular(10)),
//                           ),
//                           SizedBox(
//                             width: widthConst._isMobile ?  5.sp : 6,
//                           ),
//                         ],
//                       ),
//                     const Spacer(),
//                     DecoratedBox(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24.sp),
//                         color: const Color(0xff5E239D),
//                         gradient: const LinearGradient(colors: [
//                           Color(0xff5C358A),
//                           Color(0xff823ED2),
//                         ]),
//                       ),
//                       child: SizedBox(
//                         width: widthConst._isMobile ? 102.sp : screenWidth / 7,
//                         height: widthConst._isMobile ? 42.sp :  screenHeight / 13,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             foregroundColor: Colors.transparent,
//                             backgroundColor: Colors.transparent,
//                             shadowColor: Colors.transparent,
//                           ),
//                           onPressed: () {
//                             if (_activePage < items.length - 1) {
//                               pageController.nextPage(
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.ease,
//                               );
//                             } else if (_activePage == items.length - 1) {
//                               Navigator.pushReplacement(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => const LoginWidget(
//                                       title:
//                                           CommonConstants.LOGIN_WIDGET_TITLE),
//                                 ),
//                               );
//                             }
//                           },
//                           child: Text(
//                             _activePage == 3 ? "Start" : "Next",
//                             style: const TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//                SizedBox(
//                 height: widthConst._isMobile ? 10 : 30,
//               )
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
//
// class WidthConst{
//    bool  _isMobile;
//
//    WidthConst(this._isMobile);
//
//   LayoutBuilder widthCon(){
//     return LayoutBuilder(builder: (context, constraints){
//       if(constraints.maxWidth < 600){
//         _isMobile = true;
//       }
//       else if(constraints.maxWidth > 600) {
//         _isMobile = false;
//       }
//       return Container(child: Text("Hi"),);
//     }
//     );
//   }
// }
 */

//old code
// import 'package:flutter/material.dart';
// import 'package:flutter_screens/newCheck_in/utiltext.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ItemList {
//   String image;
//   String title;
//   String description;
//   Color color;
//
//   ItemList(
//       {required this.image,
//       required this.title,
//       required this.description,
//       required this.color});
// }
//
// class MagicSplashScreen extends StatefulWidget {
//   const MagicSplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MagicSplashScreen> createState() => _MagicSplashScreenState();
// }
//
// class _MagicSplashScreenState extends State<MagicSplashScreen> {
//   PageController pageController = PageController();
//   int _activePage = 0;
//
//   List<ItemList> items = [
//     ItemList(
//       image: 'assets/S11.jpg',
//       title: "Health Goals",
//       description:
//           "Strengthen care and improve patient \n outcomes by prescribing a healthier\n lifestyle",
//       color: const Color(0xffFC9A2F),
//     ),
//     ItemList(
//       image: 'assets/S12.jpg',
//       title: "Classes",
//       description:
//           "Nudj classes are an innovative program \n for a wellness program to drive good \n health and a healthy lifestyle",
//       color: const Color(0xff6A87D1),
//     ),
//     ItemList(
//       image: 'assets/S13.jpg',
//       title: "BP Measurements",
//       description:
//           "Our top wellness care covers all your\n  wellness like BP Readings, Workouts,\n Assessments etc",
//       color: const Color(0xffA163DE),
//     ),
//     ItemList(
//         image: 'assets/S14.jpg',
//         title: "Wellness Care",
//         description:
//             "Our top wellness care covers all your \n wellness like BP Readings, Workouts,\n Assessments etc",
//         color: const Color(0xffFF725E)),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//       builder: (BuildContext context, Orientation orientation) {
//         return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
//           return LayoutBuilder(builder: (context, constraints) {
//             if (constraints.maxWidth < 600) {
//               return magicPageone();
//             } else {
//               return magicTabPage();
//             }
//           });
//         });
//       },
//     );
//   }
//
//   magicPageone() {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: const Color(0xffFFFFFF),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: pageController,
//               itemCount: items.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _activePage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 if (index == 0 || index == 3) {
//                   return SplashPage(
//                     imagepath: items[index].image,
//                     descriptionpath: items[index].description,
//                     titlepath: items[index].title,
//                     color: items[index].color,
//                   );
//                 } else if (index == 1 || index == 2) {
//                   return SplashSecondPage(
//                     imagepath: items[index].image,
//                     descriptionpath: items[index].description,
//                     titlepath: items[index].title,
//                     color1: items[index].color,
//                   );
//                 }
//               },
//             ),
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(
//                     width: 10.sp,
//                   ),
//                   Container(
//                     height: 8.sp,
//                     width: 8.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 0
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 8.sp,
//                     width: 8.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 1
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 8.sp,
//                     width: 8.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 2
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 8.sp,
//                     width: 8.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 3
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                 ],
//               ),
//               DecoratedBox(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24.sp),
//                     color: const Color(0xff5E239D),
//                     gradient: const LinearGradient(
//                         colors: [Color(0xff5C358A), Color(0xff823ED2)])),
//                 child: SizedBox(
//                   width: 102.sp,
//                   height: 42.sp,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.transparent,
//                       backgroundColor: Colors.transparent,
//                       shadowColor: Colors.transparent,
//                     ),
//                     onPressed: () {
//                       if (_activePage < items.length) {
//                         pageController.nextPage(
//                           duration: const Duration(milliseconds: 500),
//                           curve: Curves.ease,
//                         );
//                       } else {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SplashPage(
//                                     imagepath: items[0].image,
//                                     descriptionpath: items[0].description,
//                                     titlepath: items[0].title,
//                                     color: items[0].color,
//                                   )),
//                         );
//                       }
//                     },
//                     child: Text(_activePage == 3 ? "Start" : "Next",
//                         style: FontFamily.nsWhite16_600),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10.sp,
//           )
//         ],
//       ),
//     );
//   }
//   magicTabPage() {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       // backgroundColor: const Color(0xffFFFFFF),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: pageController,
//               itemCount: items.length,
//               onPageChanged: (index) {
//                 setState(() {
//                   _activePage = index;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 if (index == 0 || index == 3) {
//                   return SplashTabPage(
//                     imagetabonepath: items[index].image,
//                     descriptiontabonepath: items[index].description,
//                     titletabonepath: items[index].title,
//                     colortabone: items[index].color,
//                   );
//                 } else if (index == 1 || index == 2) {
//                   return SplashTabSecondPage(
//                     imagetabtwopath: items[index].image,
//                     descriptiontabtwopath: items[index].description,
//                     titletabtwopath: items[index].title,
//                     colortabtwo: items[index].color,
//                   );
//                 }
//               },
//             ),
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SizedBox(
//                     width: 10.sp,
//                   ),
//                   Container(
//                     height: 6.sp,
//                     width: 6.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 0
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 6.sp,
//                     width: 6.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 1
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 6.sp,
//                     width: 6.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 2
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                   SizedBox(
//                     width: 5.sp,
//                   ),
//                   Container(
//                     height: 6.sp,
//                     width: 6.sp,
//                     decoration: BoxDecoration(
//                         color: _activePage == 3
//                             ? const Color(0xff5E239D)
//                             : const Color(0xffD7BFE9),
//                         borderRadius: BorderRadius.circular(10.sp)),
//                   ),
//                 ],
//               ),
//               DecoratedBox(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24.sp),
//                     color: const Color(0xff5E239D),
//                     gradient: const LinearGradient(
//                         colors: [Color(0xff5C358A), Color(0xff823ED2)])),
//                 child: SizedBox(
//                   width: 100.sp,
//                   height: 38.sp,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Colors.transparent,
//                       backgroundColor: Colors.transparent,
//                       shadowColor: Colors.transparent,
//                     ),
//                     onPressed: () {
//                       if (_activePage < items.length) {
//                         pageController.nextPage(
//                           duration: const Duration(milliseconds: 500),
//                           curve: Curves.ease,
//                         );
//                       } else {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => SplashPage(
//                                     imagepath: items[0].image,
//                                     descriptionpath: items[0].description,
//                                     titlepath: items[0].title,
//                                     color: items[0].color,
//                                   )),
//                         );
//                       }
//                     },
//                     child: Text(_activePage == 3 ? "Start" : "Next",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 16.sp,
//                             color: Color(0xffFFFFFF))),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10.sp,
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class SplashPage extends StatelessWidget {
//   String imagepath;
//   String descriptionpath;
//   String titlepath;
//   Color color;
//
//   SplashPage(
//       {Key? key,
//       required this.imagepath,
//       required this.descriptionpath,
//       required this.titlepath,
//       required this.color})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 60,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Skip',
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xff5E239D)),
//                   )),
//             ],
//           ),
//           SizedBox(height: 10.sp),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   // CustomPaint(painter: DrawTriangle()),
//                   Container(
//                     height: 430.sp,
//                     width: 360.sp,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fill, image: AssetImage(imagepath))),
//                   ),
//                   //CustomPaint(painter: DrawTriangle()),
//                 ],
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Nudj",
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               Text(
//                 titlepath,
//                 style: TextStyle(
//                     fontSize: 36,
//                     fontWeight: FontWeight.w600,
//                     fontStyle: FontStyle.italic,
//                     color: color),
//               )
//             ],
//           ),
//           Text(descriptionpath, style: FontFamily.nsGrey16_500)
//         ],
//       ),
//     );
//   }
// }
//
// class SplashSecondPage extends StatelessWidget {
//   String imagepath;
//   String descriptionpath;
//   String titlepath;
//   Color color1;
//
//   SplashSecondPage(
//       {Key? key,
//       required this.imagepath,
//       required this.descriptionpath,
//       required this.titlepath,
//       required this.color1})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 60,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     'Skip',
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.purpleAccent),
//                   )),
//             ],
//           ),
//           SizedBox(height: 10.sp),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Nudj",
//                     style: FontFamily.nsBlue24_600,
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     titlepath,
//                     style: TextStyle(
//                       fontSize: 36,
//                       fontWeight: FontWeight.w600,
//                       fontStyle: FontStyle.italic,
//                       color: color1,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           Text(
//             descriptionpath,
//             style: FontFamily.nsGrey16_500,
//           ),
//           Container(
//             height: 430.sp,
//             width: 360.sp,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.fill, image: AssetImage(imagepath))),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SplashTabPage extends StatelessWidget {
//   String imagetabonepath;
//   String descriptiontabonepath;
//   String titletabonepath;
//   Color colortabone;
//
//   SplashTabPage(
//       {Key? key,
//       required this.imagetabonepath,
//       required this.descriptiontabonepath,
//       required this.titletabonepath,
//       required this.colortabone})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: screenWidth * 0.059,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Skip',
//                       style: TextStyle(
//                           fontSize: screenWidth * 0.034,
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xff5E239D)),
//                     )),
//               ],
//             ),
//             SizedBox(height: screenWidth * 0.1),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Stack(
//                   children: [
//                     // CustomPaint(painter: DrawTriangle()),
//                     Container(
//                       height: screenWidth * 0.59,
//                       width: screenWidth * 0.59,
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                               fit: BoxFit.fill,
//                               image: AssetImage(imagetabonepath))),
//                     ),
//                     //CustomPaint(painter: DrawTriangle()),
//                   ],
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Nudj",
//                   style: TextStyle(
//                       fontSize: screenWidth * 0.045,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xff354260)),
//                 ),
//                 SizedBox(
//                   width: screenWidth * 0.01,
//                 ),
//                 Text(
//                   titletabonepath,
//                   style: TextStyle(
//                       fontSize: screenWidth * 0.066,
//                       fontWeight: FontWeight.w600,
//                       fontStyle: FontStyle.italic,
//                       color: colortabone),
//                 )
//               ],
//             ),
//             Text(
//               descriptiontabonepath,
//               style: TextStyle(
//                   fontSize: screenWidth * 0.03,
//                   fontWeight: FontWeight.w400,
//                   fontStyle: FontStyle.italic,
//                   color: Color(0xff3E4857)),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SplashTabSecondPage extends StatelessWidget {
//   String imagetabtwopath;
//   String descriptiontabtwopath;
//   String titletabtwopath;
//   Color colortabtwo;
//
//   SplashTabSecondPage(
//       {Key? key,
//       required this.imagetabtwopath,
//       required this.descriptiontabtwopath,
//       required this.titletabtwopath,
//       required this.colortabtwo})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: screenWidth * 0.059,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 TextButton(
//                     onPressed: () {},
//                     child: const Text(
//                       'Skip',
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.purpleAccent),
//                     )),
//               ],
//             ),
//             SizedBox(height: screenWidth * 0.02),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Nudj",
//                       style: TextStyle(
//                           fontSize: screenWidth * 0.045,
//                           fontWeight: FontWeight.w600,
//                           color: Color(0xff354260)),
//                     ),
//                     SizedBox(
//                       width: screenWidth * 0.005,
//                     ),
//                     Text(
//                       titletabtwopath,
//                       style: TextStyle(
//                         fontSize: screenWidth * 0.066,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                         color: colortabtwo,
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//             Text(
//               descriptiontabtwopath,
//               style: TextStyle(
//                 fontSize: screenWidth * 0.03,
//                 fontWeight: FontWeight.w600,
//                 fontStyle: FontStyle.italic,
//                 color: Color(0xff3E4857),
//               ),
//             ),
//             Container(
//               height: screenWidth * 0.59,
//               width: screenWidth * 0.59,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.fill, image: AssetImage(imagetabtwopath))),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
