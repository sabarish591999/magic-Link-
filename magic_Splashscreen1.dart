import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/nudj_home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MagicSplashScreen extends StatefulWidget {
  const MagicSplashScreen({Key? key}) : super(key: key);

  @override
  State<MagicSplashScreen> createState() => _MagicSplashScreenState();
}

class _MagicSplashScreenState extends State<MagicSplashScreen> {
  PageController pageController = PageController();
  int _activePage = 0;

  //late bool isMobile ;
  List<ItemList> items = [
    ItemList(
      image: 'assets/images/S11.jpg',
      title: "Health Goals",
      description:
      "Strengthen care and improve patient \n outcomes by prescribing a healthier\n lifestyle",
      color: const Color(0xffFC9A2F),
    ),
    ItemList(
      image: 'assets/images/S12.jpg',
      title: "Classes",
      description:
      "Nudj classes are an innovative program \n for a wellness program to drive good \n health and a healthy lifestyle",
      color: const Color(0xff6A87D1),
    ),
    ItemList(
      image: 'assets/images/S13.jpg',
      title: "BP Measurements",
      description:
      "Our top wellness care covers all your\n  wellness like BP Readings, Workouts,\n Assessments etc",
      color: const Color(0xffA163DE),
    ),
    ItemList(
        image: 'assets/images/S14.jpg',
        title: "Wellness Care",
        description:
        "Our top wellness care covers all your \n wellness like BP Readings, Workouts,\n Assessments etc",
        color: const Color(0xffFF725E)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    pageController;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return magicPageone();
    });
  }

  magicPageone() {
    WidthConst widthConst = WidthConst(isMobile: true);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: pageController,
        itemCount: items.length,
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
            print("${widthConst.isMobile}**80 Width Size");
          });
        },
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: widthConst.isMobile ? 40 : 30,
                ),
                widthConst.isMobile
                    ? Container(
                  width: 320.sp,
                      color: Colors.transparent,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(3);
                                  print("${widthConst.isMobile}**101 Width Size");
                                },
                                child:  Text(
                                  'Skip',
                                  style: widthConst.isMobile ? const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff5E239D)) : const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff5E239D)),
                                )),
                          ],
                        ),
                    )
                    : Container(
                       color: Colors.red,
                        width: 320,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(3);
                                  print("${widthConst.isMobile}**116");
                                },
                                child: const Text(
                                  'Skip',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff5E239D)),
                                )),
                          ],
                        ),
                      ),
                //
                if (index == 0 || index == 3)
                  Container(
                    height: widthConst.isMobile ? 400 : screenHeight / 1.8,
                    width: widthConst.isMobile ? 320 : screenWidth / 2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(items[index].image))),
                  ),
                SizedBox(
                  height: widthConst.isMobile ? 20 : 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Nudj",
                          style: widthConst.isMobile
                              ? const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff354260))
                              : const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff354260)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        widthConst.isMobile
                            ? Text(
                          items[index].title,
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: items[index].color),
                        )
                            : Text(
                          items[index].title,
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: items[index].color),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                        items[index].description,
                        style: widthConst.isMobile
                            ? const TextStyle(
                          height: 2,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff3E4857),
                        )
                            : const TextStyle(
                          height: 2,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xff3E4857),
                        )),
                  ],
                ),
                if (index == 1 || index == 2)
                  SizedBox(
                    height: 5.sp,
                  ),
                if (index == 1 || index == 2)
                  Container(
                    height: widthConst.isMobile ? 400 : 450,
                    width: widthConst.isMobile ? 320 : 370,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(items[index].image))),
                  ),
                //
                SizedBox(
                  height: widthConst.isMobile ? 80 : 100,
                ),
                SizedBox(
                  width: 320.sp,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < items.length; i++)
                        Row(
                          children: [
                            Container(
                              height: widthConst.isMobile ? 7 : 7,
                              width: widthConst.isMobile ? 7 : 7,
                              decoration: BoxDecoration(
                                  color: _activePage == i
                                      ? const Color(0xff5E239D)
                                      : const Color(0xffD7BFE9),
                                  borderRadius: widthConst.isMobile
                                      ? BorderRadius.circular(10.sp)
                                      : BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              width: widthConst.isMobile ? 5 : 6,
                            ),
                          ],
                        ),
                      const Spacer(),
                     InkWell(
                       onTap: (){
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
                       child: Container(
                         width: widthConst.isMobile ?102 : 182,
                         height: widthConst.isMobile ? 42 : 66,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(24),
                           color:const Color(0xff5E239D)
                         ),
                         child: Center(
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
                    ],
                  ),
                ),
                SizedBox(
                  height: widthConst.isMobile ? 20 : 30,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ItemList {
  String image;
  String title;
  String description;
  Color color;

  ItemList(
      {required this.image,
      required this.title,
      required this.description,
      required this.color});
}

class WidthConst {
  bool isMobile;

  WidthConst({required this.isMobile});

  LayoutBuilder widthCon() {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        isMobile = true;
      } else if (constraints.maxWidth > 600) {
        isMobile = false;
      }
      return Container(
        child: const Text("Hi"),
      );
    });
  }
}
