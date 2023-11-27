import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckInFirstPage extends StatelessWidget {
  const CheckInFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only()),
          Text("Good Morning, Garry",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 32,
            ),
          )
        ],
      ),
    );
  }
}
