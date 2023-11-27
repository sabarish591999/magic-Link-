import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkOutPage extends StatefulWidget {
  const WorkOutPage({Key? key}) : super(key: key);

  @override
  State<WorkOutPage> createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F1F2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.back,
                    size: 30,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 120,
              ),
              Text(
                "Workout",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 360,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Color(0xffE0E0E0),
                  height: 5,
                  width: 110,
                ),
                Container(
                  color: Color(0xffE0E0E0),
                  height: 5,
                  width: 110,
                ),
                Container(
                  color: Color(0xffE0E0E0),
                  height: 5,
                  width: 110,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xffE7E5E9),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent.shade100,
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Walking / Aerobic ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff5D5D61)),
                    ),
                    Text(
                      "Walk/Bike/Elliptical for 10 mins  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff5D5D61)),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios),),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xffE7E5E9),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Exercises ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff5D5D61)),
                    ),
                    Text(
                      "Mini Squat/Glute Bridge/Incline Plank ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff5D5D61)),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios),),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 90,
            width: 360,
            decoration: BoxDecoration(
                color: Color(0xffE7E5E9),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade100,
                      borderRadius: BorderRadius.circular(40)),
                ),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Post Exercise  Reflection",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff5D5D61)),
                    ),
                    Text(
                      "  ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff5D5D61)),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("General Instructions ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
          Text("Stand shoulder-width apart, engage core, and slowly bend knees and hips while keeping back straight. Lower until thighs are parallel or comfortable. Ensure knees align with toes. Push through heels to stand. Breathe in when lowering, exhale when rising. ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xff324164)),),
        ],
      ),
    );
  }
}
