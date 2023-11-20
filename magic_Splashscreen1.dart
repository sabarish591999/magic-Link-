import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/utiltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class MagicSplashScreen extends StatefulWidget {
  const MagicSplashScreen({Key? key}) : super(key: key);

  @override
  State<MagicSplashScreen> createState() => _MagicSplashScreenState();
}

class _MagicSplashScreenState extends State<MagicSplashScreen> {
  PageController pageController = PageController();
  int _activePage = 0;

  List<ItemList> items = [
    ItemList(
      image: 'assets/S11.jpg',
      title: "Health Goals",
      description:
          "Strengthen care and improve patient \n outcomes by prescribing a healthier\n lifestyle",
      color: const Color(0xffFC9A2F),
    ),
    ItemList(
      image: 'assets/S12.jpg',
      title: "Classes",
      description:
          "Nudj classes are an innovative program \n for a wellness program to drive good \n health and a healthy lifestyle",
      color: const Color(0xff6A87D1),
    ),
    ItemList(
      image: 'assets/S13.jpg',
      title: "BP Measurements",
      description:
          "Our top wellness care covers all your\n  wellness like BP Readings, Workouts,\n Assessments etc",
      color: const Color(0xffA163DE),
    ),
    ItemList(
        image: 'assets/S14.jpg',
        title: "Wellness Care",
        description:
            "Our top wellness care covers all your \n wellness like BP Readings, Workouts,\n Assessments etc",
        color: const Color(0xffFF725E)),
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return magicPageone();
        } else {
          return magicTabPage();
        }
      });
    });
  }
  magicPageone() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: items.length,
              onPageChanged: (index) {
                setState(() {
                  _activePage = index;
                });
              },
              itemBuilder: (context, index) {
                if (index == 0 || index == 3) {
                  return SplashPage(
                    imagepath: items[index].image,
                    descriptionpath: items[index].description,
                    titlepath: items[index].title,
                    color: items[index].color,
                  );
                } else if (index == 1 || index == 2) {
                  return SplashSecondPage(
                    imagepath: items[index].image,
                    descriptionpath: items[index].description,
                    titlepath: items[index].title,
                    color1: items[index].color,
                  );
                }
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.sp,
                  ),
                  Container(
                    height: 8.sp,
                    width: 8.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 0
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 8.sp,
                    width: 8.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 1
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 8.sp,
                    width: 8.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 2
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 8.sp,
                    width: 8.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 3
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.sp),
                    color: const Color(0xff5E239D),
                    gradient: const LinearGradient(
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
                      if (_activePage < items.length) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashPage(
                                    imagepath: items[0].image,
                                    descriptionpath: items[0].description,
                                    titlepath: items[0].title,
                                    color: items[0].color,
                                  )),
                        );
                      }
                    },
                    child: Text(_activePage == 3 ? "Start" : "Next",
                        style: FontFamily.nsWhite16_600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
    );
  }
  magicTabPage() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: items.length,
              onPageChanged: (index) {
                setState(() {
                  _activePage = index;
                });
              },
              itemBuilder: (context, index) {
                if (index == 0 || index == 3) {
                  return SplashTabPage(
                    imagetabonepath: items[index].image,
                    descriptiontabonepath: items[index].description,
                    titletabonepath: items[index].title,
                    colortabone: items[index].color,
                  );
                } else if (index == 1 || index == 2) {
                  return SplashTabSecondPage(
                    imagetabtwopath: items[index].image,
                    descriptiontabtwopath: items[index].description,
                    titletabtwopath: items[index].title,
                    colortabtwo: items[index].color,
                  );
                }
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10.sp,
                  ),
                  Container(
                    height: 6.sp,
                    width: 6.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 0
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 6.sp,
                    width: 6.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 1
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 6.sp,
                    width: 6.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 2
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Container(
                    height: 6.sp,
                    width: 6.sp,
                    decoration: BoxDecoration(
                        color: _activePage == 3
                            ? const Color(0xff5E239D)
                            : const Color(0xffD7BFE9),
                        borderRadius: BorderRadius.circular(10.sp)),
                  ),
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.sp),
                    color: const Color(0xff5E239D),
                    gradient: const LinearGradient(
                        colors: [Color(0xff5C358A), Color(0xff823ED2)])),
                child: SizedBox(
                  width: 100.sp,
                  height: 38.sp,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      if (_activePage < items.length) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashPage(
                                    imagepath: items[0].image,
                                    descriptionpath: items[0].description,
                                    titlepath: items[0].title,
                                    color: items[0].color,
                                  )),
                        );
                      }
                    },
                    child: Text(_activePage == 3 ? "Start" : "Next",
                        style: FontFamily.nsWhite16_600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.sp,
          )
        ],
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  String imagepath;
  String descriptionpath;
  String titlepath;
  Color color;

  SplashPage(
      {Key? key,
      required this.imagepath,
      required this.descriptionpath,
      required this.titlepath,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5E239D)),
                  )),
            ],
          ),
          SizedBox(height: 10.sp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // CustomPaint(painter: DrawTriangle()),
                  Container(
                    height: 430.sp,
                    width: 360.sp,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(imagepath))),
                  ),
                  //CustomPaint(painter: DrawTriangle()),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Nudj",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                titlepath,
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: color),
              )
            ],
          ),
          Text(descriptionpath, style: FontFamily.nsGrey16_500)
        ],
      ),
    );
  }
}

class SplashSecondPage extends StatelessWidget {
  String imagepath;
  String descriptionpath;
  String titlepath;
  Color color1;

  SplashSecondPage(
      {Key? key,
      required this.imagepath,
      required this.descriptionpath,
      required this.titlepath,
      required this.color1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.purpleAccent),
                  )),
            ],
          ),
          SizedBox(height: 10.sp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nudj",
                    style: FontFamily.nsBlue24_600,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    titlepath,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: color1,
                    ),
                  )
                ],
              ),
            ],
          ),
          Text(
            descriptionpath,
            style: FontFamily.nsGrey16_500,
          ),
          Container(
            height: 430.sp,
            width: 360.sp,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(imagepath))),
          ),
        ],
      ),
    );
  }
}

class SplashTabPage extends StatelessWidget {
  String imagetabonepath;
  String descriptiontabonepath;
  String titletabonepath;
  Color colortabone;

  SplashTabPage(
      {Key? key,
      required this.imagetabonepath,
      required this.descriptiontabonepath,
      required this.titletabonepath,
      required this.colortabone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.059,
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
                        fontSize: screenWidth * 0.034,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5E239D)),
                  )),
            ],
          ),
          SizedBox(height: screenWidth * 0.1),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  // CustomPaint(painter: DrawTriangle()),
                  Container(
                    height: screenWidth * 0.59,
                    width: screenWidth * 0.59,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(imagetabonepath))),
                  ),
                  //CustomPaint(painter: DrawTriangle()),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nudj",
                style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff354260)),
              ),
              SizedBox(
                width: screenWidth * 0.01,
              ),
              Text(
                titletabonepath,
                style: TextStyle(
                    fontSize: screenWidth * 0.066,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    color: colortabone),
              )
            ],
          ),
          Text(
            descriptiontabonepath,
            style: TextStyle(
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Color(0xff3E4857)),
          )
        ],
      ),
    );
  }
}

class SplashTabSecondPage extends StatelessWidget {
  String imagetabtwopath;
  String descriptiontabtwopath;
  String titletabtwopath;
  Color colortabtwo;

  SplashTabSecondPage(
      {Key? key,
      required this.imagetabtwopath,
      required this.descriptiontabtwopath,
      required this.titletabtwopath,
      required this.colortabtwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenWidth * 0.059,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.purpleAccent),
                  )),
            ],
          ),
          SizedBox(height: screenWidth * 0.02),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nudj",
                    style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff354260)),
                  ),
                  SizedBox(
                    width: screenWidth * 0.005,
                  ),
                  Text(
                    titletabtwopath,
                    style: TextStyle(
                      fontSize: screenWidth * 0.066,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: colortabtwo,
                    ),
                  )
                ],
              ),
            ],
          ),
          Text(
            descriptiontabtwopath,
            style: TextStyle(
              fontSize: screenWidth * 0.03,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
              color: Color(0xff3E4857),
            ),
          ),
          Container(
            height: screenWidth * 0.59,
            width: screenWidth * 0.59,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(imagetabtwopath))),
          ),
        ],
      ),
    );
  }
}

