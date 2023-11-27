import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class fitnessPageOne extends StatefulWidget {
  const fitnessPageOne({Key? key}) : super(key: key);

  @override
  State<fitnessPageOne> createState() => _fitnessPageOneState();
}

class _fitnessPageOneState extends State<fitnessPageOne> {
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(builder: (BuildContext context, Widget? child){
      return _preWorkWidget();
    });
  }
  _preWorkWidget(){
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
                  ],
                ),
              ),
              SizedBox(height: 6.sp,),
              Expanded(
                child: Center(
                  child: Container(
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
                height: screenHeight * 0.07,
                width: screenWidth * 0.1,
                color: Colors.blue,
              )
            ],
          )),
    );
  }
}
