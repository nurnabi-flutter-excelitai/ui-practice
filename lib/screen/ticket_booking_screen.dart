import 'dart:math';

import 'package:excel_it_task/model_class/business_class_model.dart';
import 'package:excel_it_task/screen/login_screen.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/economic_class_seatcolor.dart';
import '../widgets/seatcolor_change.dart';

class TicketBookingScreen extends StatefulWidget {
  const TicketBookingScreen({Key? key}) : super(key: key);

  @override
  State<TicketBookingScreen> createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.appPrimaryColor,
        body: Stack(
          children: [


            //...pick seat

            Positioned(
               left: 120.w,
                top: 18.h,
                child: Center(child: Text('PICK SEAT',style: TextStyle(fontSize: 12.sp,color: Colors.white,fontWeight: FontWeight.w600,letterSpacing: 0.6),))),





            // circle cure left side
            Positioned(
              top: -90.h,
              left: -90.w,
              child: Container(
                height: 200.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: AppColor.appPrimaryColor,
                  border: Border.all(
                      color: Color(0XFF115CCF),
                      width: 30.w
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // circle curve right side
            Positioned(
              top: 100.h,
              right: -137.w,

              child: Container(
                height: 300.h,
                width: 300.w,
                decoration: BoxDecoration(
                  //color: AppColor.appPrimaryColor,
                  border: Border.all(
                    color: Color(0XFF115CCF),
                      //color: Colors.grey,
                      width: 34.w
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),


            //...container position
            Positioned(
               top: 140.h,
                left: 16.w,
                child: Container(

                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.r))
                  ),
                  child: Column(
                    children: [
                       Padding(
                         padding:  EdgeInsets.all(12),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Icon(Icons.event_seat,color: Colors.green,),
                             Column(
                               children: [
                                 Text('Seat',style: TextStyle(fontSize: 10.sp,color: Colors.grey),),
                                 Text('5A',style: TextStyle(fontSize: 14.sp,color: AppColor.appPrimaryColor,fontWeight: FontWeight.bold))
                               ],
                             )
                           ],
                         ),
                       ),
                      SizedBox(height: 7.h,),
                      Text('Economy Class',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0.h,top: 5.h),
                        child: Container(
                          width: 70.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            //color: Color(0XFF115CCF),
                              color: Colors.grey.shade200,
                             borderRadius: BorderRadius.all(Radius.circular(10.r))
                          ),
                          child: Center(child: Text('\$215',style: TextStyle(color: AppColor.appPrimaryColor),)),
                        ),
                      )

                    ],
                  ),

            )),



            ///......>> biman bangladesh airliens......
            Positioned(
              right: 0,
              bottom: 0,
              child: CustomPaint(
                size: Size(360.w, 800.h),
                painter: RPSCustomPainter(),
              ),
            ),

            //1st clipper......
            Positioned(
              right: 187.sp,
              bottom: 440.sp,
              child: Transform.rotate(
                angle: pi / 20,
                child: ClipPath(
                  clipper: Clipper1(),
                  child: Container(
                    height: 37.h,
                    width: 22.w,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
            ),

            //....2nd clipper.....
            Positioned(
              right: 179.sp,
              bottom: 475.sp,
              child: Transform.rotate(
                angle: pi / 8,
                child: ClipPath(
                  clipper: Clipper2(),
                  child: Container(
                    height: 27.h,
                    width: 22.w,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
            ),

            //....3rd clipper.....
            Positioned(
              right: 130.sp,
              bottom: 510.sp,
              child: Transform.rotate(
                angle: pi / -5,
                child: ClipPath(
                  clipper: Clipper3(),
                  child: Container(
                    height: 20.h,
                    width: 60.w,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
            ),

            //......4th clipper......

            Positioned(
              right: 80.sp,
              bottom: 510.sp,
              child: Transform.rotate(
                angle: pi / 6,
                child: ClipPath(
                  clipper: Clipper3(),
                  child: Container(
                    height: 20.h,
                    width: 60.w,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
            ),

            //......5th clipper......

            Positioned(
              right: 67.sp,
              bottom: 480.sp,
              child: Transform.rotate(
                angle: pi / -5,
                child: Transform.scale(
                  scaleX: -1,
                  child: ClipPath(
                    clipper: Clipper2(),
                    child: Container(
                      height: 27.h,
                      width: 20.w,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ),

            //.....6th clipper,,,,
            Positioned(
              right: 52.sp,
              bottom: 447.sp,
              child: Transform.rotate(
                angle: pi / -10,
                child: Transform.scale(
                  scaleX: -1,
                  child: ClipPath(
                    clipper: Clipper1(),
                    child: Container(
                      height: 37.h,
                      width: 22.w,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 380.sp,
              right: 35.sp,
              child: Column(
                children: [
                  Container(
                    width: 182.w,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 8.0.h),
                          child: Text('Business Class'),
                        ),
                        SeatGrid(),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    width: 182.w,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: 12.0.h,bottom: 0),
                          child: Text('Economic class'),
                        ),
                        EconomicSeatGrid()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // ...elevated button

            Positioned(
              bottom: 50.h,
              left: 15.w,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Text('Processed'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0.r), // Set the desired radius size
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(220.w, 40.0), // Set the desired width and height
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.withOpacity(0.9)), // Set the desired color
                ),
              ),
            ),











          ],
        ),
      ),
    );
  }
}

class Clipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width - 15.w, size.height);

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

class Clipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 0.73);
    path.lineTo(size.width, size.height * 0.13);
    path.lineTo(size.width, size.height * 0.13);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class Clipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height * 0.15);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    // ..strokeWidth = ;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3379722, size.height * 0.9992875);
    path0.lineTo(size.width * 0.3340556, size.height * 0.6862625);
    path0.quadraticBezierTo(size.width * 0.3881667, size.height * 0.3185125,
        size.width * 0.6428889, size.height * 0.2513750);
    path0.quadraticBezierTo(size.width * 0.9194722, size.height * 0.3234750,
        size.width, size.height * 0.6883000);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width * 0.3379722, size.height * 0.9992875);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
