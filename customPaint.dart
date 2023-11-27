import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;


/*class ProgressArc extends CustomPainter{
   bool  isBackground;
   double arc;
   Color progresscolor;

  ProgressArc({required this.arc, required this.progresscolor, required this.isBackground});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, 100, 100);
    final startAngle = -pi;
    final sweepAngle = arc != null ? arc : pi;
    final userCenter = false;
    final paint = Paint()
    ..strokeCap = StrokeCap.round
    ..color = progresscolor
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10;

    if(isBackground){

    }
    canvas.drawArc(rect, startAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}*/


class ProgressArc extends CustomPainter {
  double percentage;
  LinearGradient progresscolor;
  // List<Color> progresscolor =  [
  //   Color(0xff5E239D),
  //   Color(0xffB076EE),
  // ];
  bool isBackground;
  // LinearGradient progresscolor;
  // double screenWidth = MediaQuery.of(context).size.width;
  // double screenHeight = MediaQuery.of(context).size.height;

  ProgressArc({required this.percentage,required this.progresscolor,required this.isBackground});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, 120, 120);
    final startAngle = pi;
    //final sweepAngle =   pi ;
    final sweepAngle = pi * (percentage / 100);
    final userCenter = false;
    final paint = Paint()
      ..strokeCap = StrokeCap.square
      ..shader= progresscolor.createShader(rect)
      //SweepGradient(colors: [Color(0xff5E239D), Color(0xffB076EE),])
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawArc(rect, startAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class LineArc extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..color = Colors.green
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    Offset offset = Offset(0, 0);
    Offset startoffset = Offset(100,2);
    Offset endoffset = Offset(1,2);
    canvas.drawLine(startoffset,endoffset,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CircleProgress extends CustomPainter{

  double currentProgress;

  CircleProgress(this.currentProgress);

  @override
  void paint(Canvas canvas, Size size) {

    //this is base circle
    Paint outerCircle = Paint()
      ..strokeWidth = 8
      ..color = Color(0xffFEE8B2)
      ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = 8
      ..color = Color(0xffE49441)
      ..style = PaintingStyle.stroke
      ..strokeCap  = StrokeCap.round;

    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2,size.height/2) ;

    canvas.drawCircle(center, radius, outerCircle); // this draws main outer circle

    double angle = 2 * pi * (currentProgress/100);

    canvas.drawArc(Rect.fromCircle(center: center,radius: radius), -pi/2, angle, false, completeArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}