import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FontFamily{
  //static final TextStyle googleFont = GoogleFonts.nunitoSans();
  static final TextStyle nsBlack16_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff10121C),
    fontSize: 16.sp,
  );
  static final TextStyle nsBlack10_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff10121C),
    fontSize: 10.sp,
  );
  static final TextStyle nsBlack14_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff10121C),
    fontSize: 14.sp,
  );
  static final TextStyle nsBlue18_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff324164),
    fontSize: 18.sp,
  );
  static final TextStyle nsBlue20_700 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w700,
    color: Color(0xff324164),
    fontSize: 20.sp,
  );
  static final TextStyle nsBlue24_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w700,
    color: Color(0xff354260),
    fontSize: 24.sp,
  );
  static final TextStyle nsBlue16_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff324164),
    fontSize: 16.sp,
  );
  static final TextStyle nsBlack16_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff10121C),
    fontSize: 16.sp,
  );
  static final TextStyle nsBlack20_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff666666),
    fontSize: 20.sp,
  );
  static final TextStyle nsGrey12_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff5D5D61),
    fontSize: 12.sp,
  );
  static final TextStyle nsGrey12_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff5D5D61),
    fontSize: 12.sp,
  );
  static final TextStyle nsGrey16_500 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w500,
    color: Color(0xff555F6E),
    fontSize: 16.sp,
  );
  static final TextStyle nsGreyP12_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff666666),
    fontSize: 12.sp,
  );
  static final TextStyle nsGrey16_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xff5D5D61),
    fontSize: 12.0,
  );
  static final TextStyle nsGrey18_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff666666),
    fontSize: 18.sp,
  );
  static final TextStyle nsGrey16_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff666666),
    fontSize: 16.sp,
  );
  static final TextStyle nsWhite16_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xffFFFFFF),
    fontSize: 16.sp,
  );
  static final TextStyle nsWhite10_600 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w600,
    color: Color(0xffFFFFFF),
    fontSize: 10.sp,
  );
  static final TextStyle osBlue28_70 = TextStyle(
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.w700,
    color: Color(0xff0F235A),
    fontSize: 28.33.sp,
  );
  static final TextStyle nsBlack18_400 = TextStyle(
    fontFamily: 'NunitoSans',
    fontWeight: FontWeight.w400,
    color: Color(0xff10121C),
    fontSize: 18.0,
  );

}

// class Contsiner extends StatefulWidget {
//   const Contsiner({Key? key}) : super(key: key);
//
//   @override
//   State<Contsiner> createState() => _ContsinerState();
// }

// class _ContsinerState extends State<Contsiner> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:  Padding(
//         padding:  EdgeInsets.only(right: 16.sp, left: 16.sp),
//         child: Container(
//           height: screenHeight * 0.12,
//           width: screenWidth * 0.795,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15.sp),
//               color: Color(0xffF6F7F8)
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: screenHeight * 0.12,
//                 width: screenWidth * 0.12,
//                 decoration: BoxDecoration(
//                   color: Color(0xffB8E1EA),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Center(
//                     child: Text("")),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Step Counter",style: FontFamily.fontOne,),
//                   SizedBox(height: 4.sp,),
//                   Text("11,000 steps",style:  FontFamily.fontTwo,)
//                 ],
//               ),
//               SizedBox(width :screenWidth * 0.22),
//               Container(
//                 height: screenHeight * 0.05,
//                 width: screenWidth * 0.08,
//                 decoration: BoxDecoration(
//                   color: Color(0xff65769E),
//                   shape: BoxShape.circle,
//                 ),
//                 child: IconButton(
//                   color: Colors.white,
//                   onPressed: (){},
//                   icon: Icon(CupertinoIcons.add),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),//Stepcounter
//       SizedBox(height: 6.sp,),
//       _childContainer(screenHeight, screenWidth,headingTxt: 'Walking / Aerobic',subTxt: 'Walk/Bike/Elliptical for 10 mins ',circleColor: Colors.green.shade100), //Workout
//       SizedBox(height: 6.sp,),
//       _childContainer(screenHeight, screenWidth,headingTxt: 'Exercise',subTxt: 'Mini Squat ,Glute Bridge, Incline plank aaaaaaaaaa',circleColor: Colors.red.shade200), //Workout
//       SizedBox(height: 6.sp,),
//       _childContainer(screenHeight, screenWidth,headingTxt: 'Post Exercise Reflection ',subTxt: 'Barbell Squats, Push-Ups, Plank',circleColor: Colors.blue.shade100), //Workout
//       SizedBox(height: 20.sp,),
//       Padding(
//         padding:  EdgeInsets.only(left: 80.sp,right: 80.sp),
//         child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               fixedSize: Size(screenWidth * 0.397,screenHeight * 0.0465 ),
//               backgroundColor:  Color(0xff324164),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(25),
//               ),
//             ),
//             onPressed: (){},
//             child: Text("Start",style:  FontFamily.fontWone,)
//         ),
//       ),//startbutton,
//     );
//   }
// }

