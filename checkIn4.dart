import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class fourthCheckin extends StatefulWidget {
  const fourthCheckin({Key? key}) : super(key: key);

  @override
  State<fourthCheckin> createState() => _fourthCheckinState();
}

class _fourthCheckinState extends State<fourthCheckin> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(builder: (BuildContext context, Widget? child){
      return Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: ElevatedButton(onPressed: () {},child: Text("Save"),),
      );
      //return _mcheckIn4();
    });
  }
  _mcheckIn4() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF0F1F2),
          body: Column(
            children: [
              SizedBox(height: 10.sp),
              Container(
                color: Colors.yellow,
                width: screenWidth,
                height: screenHeight * 0.1,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.back,
                        size: 30.sp,
                      ),
                    ),
                    SizedBox(width: 30.sp,),
                    ElevatedButton(
                      onPressed: (){},
                        child: Text("Today"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:  Color(0xff7356B1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.sp,),
              Expanded(
                child: Center(
                  child: Container(
                    //padding: EdgeInsets.only(left: 10,right: 30),
                    //color: Colors.red,
                    height: screenHeight * 80 / 100,
                    width: screenWidth * 84 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red//Color(0xffFFFFFF),
                    ),
                    child: SingleChildScrollView(
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5.sp, left: 10.sp,right: 10.sp),
                            child: Container(
                              color: Colors.green,
                              height: screenHeight * 10/100,
                              width: screenWidth * 92/100,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      _readlines(),
                                      _readlines(),
                                      _readlines(),
                                      _readlines(),
                                      _readlines(),
                                    ],
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
              Container(
                height: screenHeight * 0.05,
                width: screenWidth * 0.1,
                color: Colors.green,
              )
            ],
          )),
    );
  }
  Widget _readlines() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.E().format(now);
    return Container(
      height: 70.sp,
      width: 50.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffEEFCFF),
      ),
      child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${now.day}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey),),
                  Text("${formattedDate}",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey),),
                ],
              ),
            ],
          )),
    );
  }
}
