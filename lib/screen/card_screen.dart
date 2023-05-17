

import 'dart:math';

import 'package:excel_it_task/screen/oreder_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),








      body: Padding(
        padding:  EdgeInsets.only(top: 32.0,left: 16,right: 16),
        child: Column(
          children: [
            Container(
              height: 200.h,
              width: 340.w,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)


              ),
              child: Stack(
                children: [

                  Positioned(
                    top: 0,
                    bottom: 15,
                    right: 0,


                    child: ClipPath(
                      clipper: WaveClipper(),

                      child: Container(
                        width: 80,

                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(12))
                        ),

                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: SecondWaveClipper(),

                    child: Container(
                      // width: 340,
                      // height: 200,

                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r,),topRight: Radius.circular(12.r))
                      ),

                    ),
                  ),
                  ClipPath(
                    clipper: ThirdWaveClipper(),

                    child: Container(
                      // width: 340,
                      // height: 200,

                      decoration: BoxDecoration(
                        color: Colors.green,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.r,),topRight: Radius.circular(12.r),topLeft: Radius.circular(12.r))

                      ),


                    ),
                  ),



                  Positioned(
                      right: 24.w,
                      bottom: 20.h,
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle
                        ),
                      )


                  ),
                  Positioned(
                      right: 42.w,
                      bottom: 20.h,
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      )


                  ),


                  Positioned(
                      left: 30.w,
                      top: 20.h,
                      child:  Text('John Smith',style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w700),)


                  ),

                  Positioned(
                      left: 30.w,
                      bottom: 20.h,
                      child:  Text('4756 *** *** 9018',style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w700),)


                  ),
                  Positioned(
                      left: 30.w,
                      bottom: 50.h,
                      child:  Text('Amazon Platinium',style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w500),)


                  ),








                ],
              ),
            ),



          ],
        ),
      ),


    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(size.width, size.height); //start
    var firstStart = Offset(size.width, size.height);
    var firstEnd = Offset(size.width, size.height);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);

    // var secondStart = Offset(size.width - (size.width/3), size.height-105);
    // var secondEnd = Offset(size.width/3, size.height);
    // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx,secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}


class  SecondWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = Path();
    //..start line....
    path.lineTo(size.width-200.w, size.height/2.h);
    //...1st line
    path.lineTo(size.width, size.height-200.h);
    //...2nd line.....
    path.lineTo(size.width, 0);
    //...3rd line
    path.lineTo(0, 0);
    //...closing line
    path.lineTo(0, size.height-100.h);

    path.close();



    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}


class  ThirdWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = Path();

    //...starting......

    path.lineTo(0, 0);
    //1st
    path.lineTo(0, size.height);
    //2nd

    path.lineTo(size.width/2, size.height);

    //3rd

    path.lineTo(size.width-130.w, size.height-48.h);

    // 4 th
    path.lineTo(size.width-127.w, size.height-70.h);

    // 5 th
    path.lineTo(size.width-232.w, 0);

    // 6 th

    path.lineTo(0, 0);

    // 7 th
    path.lineTo(0, size.height);



    path.close();



    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
   return false;
  }
}







