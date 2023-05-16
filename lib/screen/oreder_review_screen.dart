

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderReviewScreen extends StatefulWidget {
  const OrderReviewScreen({Key? key}) : super(key: key);

  @override
  State<OrderReviewScreen> createState() => _OrderReviewScreenState();
}

class _OrderReviewScreenState extends State<OrderReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Container(
           height: 200.h,
           width: 340.w,
           decoration: BoxDecoration(
             color: Colors.grey
           ),
           child: Stack(
             children: [

                  Positioned(
                    top: -60,
                    right: -70,
                    bottom: 15,
                    child: Transform.rotate(
                      angle: -pi/11,
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        color: Colors.green,

                 ),
                    ),
                  ),

               Positioned(
                    top: -120,
                    right: 10,
                    child: Transform.rotate(
                      angle: pi/3.5,
                      child: Container(
                        height: 200.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.blue,
                        ),
                 ),
                    ),
                  ),

               Positioned(
                    top: -40,
                    left: -75,
                    bottom: -20,
                    child: Transform.rotate(
                      angle: pi/3,
                      child: Container(
                        height: 300.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.deepPurpleAccent,
                        ),



                 ),

                    ),
                  ),



             ],
           ),
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
    path.lineTo(0, size.height); //start
    var firstStart = Offset(size.width /3, size.height);
    var firstEnd = Offset(size.width/2.5, size.height);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);

    var secondStart = Offset(size.width - (size.width/3), size.height-105);
    var secondEnd = Offset(size.width/3, size.height);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx,secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}