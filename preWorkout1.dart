import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/newCheck_in/utiltext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart'as http;

class PreWorkoutone extends StatefulWidget {
  const PreWorkoutone({Key? key}) : super(key: key);

  @override
  State<PreWorkoutone> createState() => _PreWorkoutoneState();
}

class _PreWorkoutoneState extends State<PreWorkoutone> {
  late final int value;
  int mycount = 0;
  int currentlyExpandedIndex = 0;
  bool isSelect = true;
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (BuildContext context, Widget? child) {
      return _preWorkWidget();
    });
  }

  _preWorkWidget() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffF0F1F2),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  color: Colors.transparent,
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.back,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(
                        width: 60.sp,
                      ),
                      Center(
                          child: Text(
                        "Pre-workout readiness",
                        style: FontFamily.nsBlack18_400,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Container(
                      height: 5.sp,
                      width: 80.sp,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 5.sp,
                      width: 80.sp,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 5.sp,
                      width: 80.sp,
                      color: Colors.grey[300],
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 5.sp,
                      width: 80.sp,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
                //ratingBar(screenWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      //height: screenHeight * 0.345,
                      width: screenWidth * 0.885,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Color(0xffF0F1F2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20.sp,
                          ),
                          Center(
                            child: Container(
                              height: screenHeight * 0.07,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.sp),
                                    topRight: Radius.circular(20.sp)),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Complete all 5 steps",
                                  style: FontFamily.nsBlack20_400,
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 0.5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: preworklist
                                .asMap()
                                .entries
                                .map<GestureDetector>((entry) {
                              int index = entry.key;
                              PreWorkout preWorkout = entry.value;
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (preworklist[currentlyExpandedIndex].isExpanding = preWorkout.isExpanding) {
                                        preWorkout.isExpanding = !preWorkout.isExpanding;
                                        //preWorkout.isExpanding = false;
                                        //preworklist[currentlyExpandedIndex].isExpanding== !preworklist[currentlyExpandedIndex].isExpanding;
                                        //preWorkout.isExpanding == false;
                                        //preworklist[currentlyExpandedIndex].isExpanding = preWorkout.isExpanding;
                                        //preWorkout.isExpanding = false;
                                        if (index < preworklist.length) {
                                          currentlyExpandedIndex = index;
                                        }
                                      }
                                      //if(preworklist[currentlyExpandedIndex].isExpanding){preWorkout.isExpanding = !preWorkout.isExpanding;}
                                      else {
                                        // Randomly select an index to expand
                                        int randomIndex = (preworklist.length);
                                       // // Expand the randomly selected card
                                        preworklist[randomIndex].isExpanding = !preworklist[randomIndex].isExpanding;
                                        currentlyExpandedIndex = randomIndex;
                                        print("${preworklist[randomIndex].rating}**129preworkoutrating");
                                        print("${randomIndex}**147RandomIndex");
                                      }
                                      // if (currentlyExpandedIndex == index) {
                                      //   currentlyExpandedIndex ;
                                      //   preWorkout.isExpanding = !preWorkout.isExpanding;// Collapse the card
                                      // } else {
                                      //   currentlyExpandedIndex = index;
                                      //   preWorkout.isExpanding = !preWorkout.isExpanding;// Expand the tapped card
                                      // }
                                      print("${currentlyExpandedIndex}**126currentlyexpanded");
                                      print("${index}**127index");
                                      print("${preWorkout.rating}**129preworkoutrating");
                                      print("${preworklist[currentlyExpandedIndex].isExpanding}**130preworklistrating");
                                    });
                                  },
                                  onDoubleTap: (){
                                    setState(() {
                                      preWorkout.isExpanding = !preWorkout.isExpanding;
                                    });
                                  },
                                  child:  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    child: Card(
                                        clipBehavior: Clip.none,
                                        margin: EdgeInsets.all(1.sp),
                                        child: preWorkout.isExpanding
                                            ? headContainer(screenWidth,
                                                screenHeight, preWorkout,
                                                headingTxt: preWorkout.heading)
                                            : expandContainer(
                                                screenHeight, screenWidth,index,
                                                headingEtxt: preWorkout.heading,
                                                expText: preWorkout.question,
                                                preWorkout: preWorkout)),
                                  )
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),

                    preworklist[4].rating > 0 ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(screenWidth * 0.25, screenHeight * 0.0465),
                          backgroundColor: Color(0xff324164),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Next>",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )):ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize:
                          Size(screenWidth * 0.25, screenHeight * 0.0465),
                          backgroundColor: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Next>",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }

  // ratingBar(double screenWidth) {
  //   return Container(
  //       width: screenWidth * 0.9,
  //       height: 5.sp,
  //       color: Colors.grey[300],
  //       child: CustomPaint(
  //           // size: Size(
  //           //     screenHeight * 0.8, screenWidth * 0.25),
  //           painter: LineArc(p1: 10, p2: 300,preWorkout: PreWorkout(heading: "", question: "", rating: 0, isExpanding: true, expcomand: List.empty()))));
  // }

  expandContainer(
    double screenHeight,
    double screenWidth,int index, {
    required headingEtxt,
    required expText,
    required PreWorkout preWorkout,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.sp),
            bottomRight: Radius.circular(50.sp),
          )),
      height: screenHeight * 0.309,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color(0xffEAF3FF),
              width: screenWidth * 0.908,
              height: screenHeight * 0.075,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.sp,
                  ),
                  Text(
                    headingEtxt,
                    style: FontFamily.nsBlue18_600,
                  ),
                  const Spacer(flex: 10),
                  preWorkout.rating > 0
                      ? const Icon(
                          Icons.check_circle,
                          color: Color(0xff7AA126),
                        )
                      : Text(""),
                  SizedBox(
                    width: 10.sp,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.sp, right: 10.sp, top: 10.sp),
              child: Container(
                color: Colors.transparent,
                width: screenWidth,
                child: Text(
                  expText,
                  style: FontFamily.nsGrey16_400,
                ),
              ),
            ),
            preWorkout.rating == 0
                ? SizedBox(
                    height: 20.sp,
                  )
                : SizedBox(
                    height: 0.sp,
                  ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
              child: Container(
                height: screenHeight * 0.07,
                color: Colors.transparent,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Low",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff666666)),
                    ),
                    ratingIcon(preWorkout),
                    const Text(
                      "High",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff666666)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            //for (int i = preWorkout.rating; i > 0; i--)
             // if (preWorkout.rating >= 0 && preWorkout.rating == i)
            if(preWorkout.rating !=0)
                Container(
                  alignment: Alignment.center,
                      child: Text(
                        preWorkout.expcomand[preWorkout.rating-1].toString(),
                        style: FontFamily.nsBlue16_600,
                      ),
                      height: 24.sp,
                      width: 200.sp,
                      decoration: BoxDecoration(
                        color: Color(0xffEAF3FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                // Column(
                //     children: preWorkout.expcomand[i - 1].split(",").map<Container>((item) {
                //   print("${i}**309");
                //   print("${preWorkout.expcomand[i - 1]}**310");
                //   return Container(
                //     child: Center(
                //       child: Text(
                //         item,
                //         style: FontFamily.nsBlue18_600,
                //       ),
                //     ),
                //     height: 24.sp,
                //     width: 200.sp,
                //     decoration: BoxDecoration(
                //       color: Color(0xffEAF3FF),
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //   );
                // }).toList())
              // else
              //   Text("")
          ],
        ),
      ),
    );
  }

  headContainer(
    double screenWidth,
    double screenHeight,
    PreWorkout preWorkout, {
    required headingTxt,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.sp),
              bottomRight: Radius.circular(20.sp))),
      //width: screenWidth * 0.908,
      height: screenHeight * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 20.sp,
          ),
          Text(
            headingTxt,
            style: FontFamily.nsBlue18_600,
          ),
          Spacer(flex: 10),
          preWorkout.rating == 0
              ? Text(
                  "To Do",
                  style: FontFamily.nsGreyP12_600,
                )
              : Icon(
                  Icons.check_circle,
                  color: Color(0xff7AA126),
                ),
          SizedBox(width: 10.sp),
        ],
      ),
    );
  }

  // ratingIcon(PreWorkout preWorkout) {
  //    {
  //     List<Widget> stars = [];
  //     for (int i = 1; i <= 5; i++) {
  //       stars.add(
  //         GestureDetector(
  //           onTap: () {
  //             setState(() {
  //               preWorkout.rating = i;
  //               print("${preWorkout.rating}**417");
  //             });
  //           },
  //           child: Icon(
  //             Icons.star_rate,
  //             color: preWorkout.rating >= i ? Color(0xff1f487c) : Colors.grey,
  //             size: 30.sp,
  //           ),
  //         ),
  //       );
  //     }
  //     return Row(children: stars);
  //   }
  // }
  ratingIcon(PreWorkout preWorkout) {
    return Row(
      children: List.generate(
          5,
          (index) => InkWell(
            onDoubleTap: (){
              setState(() {
                preWorkout.rating == index-1;
              });
            },
            child: IconButton(
                onPressed: () {
                  setState(() {
                    preWorkout.rating = index + 1;
                    preWorkout.isExpanding = !preWorkout.isExpanding;
                    //preworklist[index].isExpanding = false;
                    print("${currentlyExpandedIndex}**497Before Inc");
                    if (currentlyExpandedIndex < preworklist.length - 1) {
                      currentlyExpandedIndex = currentlyExpandedIndex + 1;
                      preworklist[currentlyExpandedIndex!].isExpanding =
                          !preworklist[currentlyExpandedIndex!].isExpanding;
                    }
                    if (currentlyExpandedIndex == preworklist.length + 1) {
                      preworklist[currentlyExpandedIndex!].isExpanding =
                          !preworklist[currentlyExpandedIndex!].isExpanding;
                    }
                    print("${preWorkout.rating}**433preworkout rating");
                    print("${index}**433Starindex");
                    print("${currentlyExpandedIndex}**502 star current expanded index");
                    print("${preworklist[currentlyExpandedIndex!].isExpanding}**504 preworklist.index.expanding");
                  });
                },
                icon: Icon(
                  Icons.star_rate,
                  size: 30.sp,
                  color: preWorkout.rating > index
                      ? Color(0xff1f487c)
                      : Color(0xec9e9e9e),
                )),
          )),
    );
  }

  // void fetchUsers()async{
  //   print("Fetch Users");
  //   const url = "https://randomuser.me/api/?results=30";
  //   final uri = Uri.parse(url);
  //   final  response = await http.get(uri);
  //   final body = response.body;
  //   final json = jsonDecode(body);
  //   setState(() {
  //     user = json['results'];
  //   });
  //   print("Fetch Completed");
  // }
}

class PreWorkout {
  final String heading;
  final String question;
  int rating;
  bool isExpanding;
  List expcomand;

  PreWorkout(
      {required this.heading,
      required this.question,
      required this.rating,
      required this.isExpanding,
      required this.expcomand});
}

List<PreWorkout> preworklist = [
  PreWorkout(
      heading: "1.Mood and Motivation",
      question: "How motivated do you feel to work out today?",
      rating: 0,
      isExpanding: true,
      expcomand: [
        " 😒 Poorly Motivated",
        "😑 Not Very Motivated",
        "🙂 Motivated",
        "😊 Some what Motivated",
        "❤ Very Motivated"
      ]),
  PreWorkout(
      heading: "2.Recovery",
      question: "How motivated do you feel to work out today?",
      rating: 0,
      isExpanding: true,
      expcomand: [
        " 😒 Poorly Motivated",
        "😑 Not Very Motivated",
        "🙂 Motivated",
        "😊 Some what Motivated",
        "❤ Very Motivated"
      ]),
  PreWorkout(
      heading: "3.Nutrition",
      question: "How motivated do you feel to work out today?",
      rating: 0,
      isExpanding: true,
      expcomand: [
        " 😒 Poorly Motivated",
        "😑 Not Very Motivated",
        "🙂 Motivated",
        "😊 Some what Motivated",
        "❤ Very Motivated"
      ]),
  PreWorkout(
      heading: "4.Sleep Quality",
      question: "How motivated do you feel to work out today?",
      rating: 0,
      isExpanding: true,
      expcomand: [
        " 😒 Poorly Motivated",
        "😑 Not Very Motivated",
        "🙂 Motivated",
        "😊 Some what Motivated",
        "❤ Very Motivated"
      ]),
  PreWorkout(
      heading: "5.Mental Focus",
      question:
          "How focused do you feel right now and how ready are you for your workout mentally?",
      rating: 0,
      isExpanding: true,
      expcomand: [
        " 😒 Poorly Motivated",
        "😑 Not Very Motivated",
        "🙂 Motivated",
        "😊 Some what Motivated",
        "❤ Very Motivated"
      ]),
];

// class LineArc extends CustomPainter {
//   double p1;
//   double p2;
//   PreWorkout preWorkout;
//   LineArc({required this.p1, required this.p2,required this.preWorkout});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint();
//       paint.color = Colors.green;
//       paint.strokeCap = StrokeCap.square;
//       paint.style = PaintingStyle.stroke;
//       paint.strokeWidth = 5;
//     Offset offset = Offset(0, 0);
//     Offset startoffset = Offset(p1, 3);
//     Offset endoffset = Offset(p2, 3);
//     if(preWorkout.rating > 0)
//       print("${preWorkout.rating}**554 preworkRating for percent");
//     canvas.drawLine(startoffset, endoffset, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

// class PreworkText{
//   final List preworkText;
//   final Icon preworkIcon;
//   PreworkText({required this.preworkText,required this.preworkIcon});
// }
// List <PreworkText> preworkTextlist = [
//   PreworkText(preworkText: [
//     "Poorly Motivated",
//     "Not Very Motivated",
//     " Motivated",
//     "Some what Motivated",
//     "Very Motivated"],preworkIcon: )
// ];

// PreWorkout myPreWorkout = PreWorkout(
//   heading: "Sample Heading",
//   question: "Sample Question",
//   rating: 3,
//   isExpanding: true,
// );
//
//
// List<PreWorkout> myPreWorkoutList = myPreWorkout.preworklist;
