import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MagicHomePage extends StatefulWidget {
  const MagicHomePage({Key? key}) : super(key: key);

  @override
  State<MagicHomePage> createState() => _MagicHomePageState();
}

class _MagicHomePageState extends State<MagicHomePage> {
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
          Stack(children: [
            Container(
                color: Colors.transparent,
                height: 240.sp,
                width: double.infinity,
                child: Image.network(
                  "https://media.istockphoto.com/id/863549736/photo/youre-in-my-hands-now.jpg?s=1024x1024&w=is&k=20&c=JAKGlMNeCKewz5p9sVR1Py6IJNqYmQEU2-9RDSsocZ8=",
                  height: 240.sp,
                  fit: BoxFit.fill,
                )),
            Container(
              height: 240.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.05),
                  ],
                ),
              ),
            ),
          ]), //head image
          SizedBox(
            height: 30.sp,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnNA6icfVROFR2goJ9u4_qkQNe6JQX8NyKHBm2-6lDMS6LchEemzj3BPLsYgO6okPivw&usqp=CAU",
            width: 200.sp,
          ), //Logo
          SizedBox(
            height: 20.sp,
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
          SizedBox(
            width: 300.sp,
            child: TextFormField(
              cursorColor: Color(0xff8B898C),
              decoration: InputDecoration(
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff8B898C),
                    ),
                  ),
                  border: UnderlineInputBorder(),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color(0xff8B898C),
                  )),
            ),
          ),//
          SizedBox(
            width: 300.sp,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Use Face ID / Touch ID",
                      style: TextStyle(
                          color: Color(0xff5796FF),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color(0xff5796FF),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp),
                    )),
              ],
            ),
          ), // forgotpassword
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(280.sp, 37.sp),
                backgroundColor: Color(0xff324164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600))),
          SizedBox(
            height: 20.sp,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(280.sp, 37.sp),
                backgroundColor: Color(0xff324164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Login with Secure Link",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 10.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                    color: Color(0xff767676),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        color: Color(0xff324164),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
