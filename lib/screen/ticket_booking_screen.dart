
import 'dart:math';

import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketBookingScreen extends StatefulWidget {
  const TicketBookingScreen({Key? key}) : super(key: key);

  @override
  State<TicketBookingScreen> createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appPrimaryColor,
      body: Stack(
        children: [

           ///......>> biman bangladesh airliens......
           Positioned(
             right: 0,
             bottom: 0,
             child: CustomPaint(


              size: Size(360.w,800.h),
              painter: RPSCustomPainter(),

          ),
           ),




          /*Positioned(
            right: 60.w,
            bottom: 390.h,
            child: Transform.scale(
              scaleX: -1,
              child: ClipPath(
                clipper: Clipper1(),
                child: Container(
                  height: 37.h,
                  width: 25.w,
                  color: AppColor.appPrimaryColor,
                ),
              ),
            ),
          ),

          Positioned(
            right: 60.w,
            bottom: 424.h,
            child: Transform.scale(
              scaleX: -1,
              child: ClipPath(
                clipper: Clipper2(),
                child: Container(
                  height: 27.h,
                  width: 25.w,
                  color: Colors.red,
                ),
              ),
            ),
          ),

          Positioned(
            right: 60.w,
            bottom: 453.h,
            child: Transform.scale(
              scale: -1,
              child: ClipPath(
                clipper: Clipper3(),
                child: Container(
                  height: 20.h,
                  width: 60.w,
                  color: Colors.pink,
                ),
              ),
            ),
          ),*/




          //....1st clipper
          Positioned(
            right: 190.w,
            bottom: 390.h,
            child: Transform.rotate(
              angle:pi/20,
              child: ClipPath(
                clipper: Clipper1(),
                child: Container(
                  height: 37.h,
                  width: 25.w,
                  color: AppColor.appPrimaryColor,
                ),
              ),
            ),
          ),

          //.....2nd clipper
           Positioned(
            right: 182.w,
            bottom: 424.h,
            child: Transform.rotate(
              angle:pi/8,
              child: ClipPath(
                clipper:Clipper2() ,
                child: Container(
                  height: 27.h,
                  width: 25.w,
                  color: Colors.red,
                ),
              ),
            ),
          ),



          //....3rd clipper.....
          Positioned(
            right: 135.w,
            bottom: 453.h,
            child: Transform.rotate(
              angle: pi/-6,
              child: ClipPath(
                clipper: Clipper3(),
                child: Container(
                  height: 20.h,
                  width: 60.w,
                  color: Colors.pink,
                ),
              ),
            ),
          ),

         //......4th clipper......

          Positioned(
            right: 90.w,
            bottom: 452.h,
            child: Transform.rotate(
              angle: pi/6,
              child: ClipPath(
                clipper: Clipper3(),
                child: Container(
                  height: 20.h,
                  width: 60.w,
                  color: Colors.pink,
                ),
              ),
            ),
          ),

          //......5th clipper......

          Positioned(
            right: 74.w,
            bottom: 424.h,
            child: Transform.rotate(
              angle: pi/-5,
              child: Transform.scale(
                scaleX: -1,
                child: ClipPath(
                  clipper: Clipper2(),
                  child: Container(
                    height: 27.h,
                    width: 25.w,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),





        ],
      ),
    );
  }
}

class Clipper3  extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width-15.w, size.height);

    path.lineTo(10.w, size.height);

    path.lineTo(0, 0);

    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
   return true;
  }
}

class Clipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height*0.73);
    path.lineTo(size.width, size.height*0.13);
    path.lineTo(size.width, size.height*0.13);
    path.lineTo(0, 0);
    path.close();



    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
  }
}

class Clipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height*0.75);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height*0.15);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}





class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
      // ..strokeWidth = ;


    Path path0 = Path();
    path0.moveTo(size.width*0.3379722,size.height*0.9992875);
    path0.lineTo(size.width*0.3340556,size.height*0.6862625);
    path0.quadraticBezierTo(size.width*0.3881667,size.height*0.3185125,size.width*0.6428889,size.height*0.2513750);
    path0.quadraticBezierTo(size.width*0.9194722,size.height*0.3234750,size.width,size.height*0.6883000);
    path0.lineTo(size.width,size.height);
    path0.lineTo(size.width*0.3379722,size.height*0.9992875);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
