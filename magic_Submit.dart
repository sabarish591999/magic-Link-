import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MagicSubPage extends StatefulWidget {
  const MagicSubPage({Key? key}) : super(key: key);

  @override
  State<MagicSubPage> createState() => _MagicSubPageState();
}

class _MagicSubPageState extends State<MagicSubPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return _MagicHomePg();
      },
    );
  }

  Scaffold _MagicHomePg() {
    return Scaffold(
      backgroundColor: Color(0xffFFFEF6),
      body: Column(
        children: [
          SizedBox(
            height: 100.sp,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnNA6icfVROFR2goJ9u4_qkQNe6JQX8NyKHBm2-6lDMS6LchEemzj3BPLsYgO6okPivw&usqp=CAU",
            width: 200.sp,
          ), //Logo
          SizedBox(
            height: 60.sp,
          ),
          SizedBox(
            width: 300.sp,
            child: TextFormField(
              cursorColor: Color(0xff8B898C),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Username",
                  hintStyle: TextStyle(
                      color: Color(0xff8B898C),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp)),
            ),
          ), //UserName
          SizedBox(height: 20.sp,),
          SizedBox(
            width: 300.sp,
            child: TextFormField(
              cursorColor: Color(0xff8B898C),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    color: Color(0xff8B898C),
                  )),
            ),
          ),//
          SizedBox(height: 20.sp),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(280.sp, 37.sp),
                backgroundColor: Color(0xff324164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: Text("Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600))),
          SizedBox(
            height: 120.sp,
          ),
          Stack(children: [
            Container(
                color: Colors.transparent,
                height: 240.sp,
                width: double.infinity,
                child: Image.network(
                  "https://media.istockphoto.com/id/1468929848/photo/embraced-senior-couple-walking-through-their-backyard.jpg?s=1024x1024&w=is&k=20&c=H7G58MfBJWFHNy9VAJ0EF3081i1gVa4Xv_EDWDUEozQ=",
                  height: 240.sp,
                  fit: BoxFit.fill,
                )),
            Container(
              height: 240.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.001),
                  ],
                ),
              ),
            ),
          ]), //head image
        ],
      ),
    );
  }
}
