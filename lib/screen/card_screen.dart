

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
      body: Center(
        child: Container(
          height: 200.h,
          width: 340.w,
          decoration: BoxDecoration(
              color: Colors.grey,

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
                    color: Colors.red,

                  ),
                ),
              ),
              // Positioned(
              //   top: 0,
              //   bottom: 80,
              //   right: 0,
              //
              //
              //   child: ClipPath(
              //     clipper: SecondWaveClipper(),
              //
              //     child: Container(
              //       width: 180,
              //
              //       decoration: BoxDecoration(
              //         color: Colors.blue,
              //         borderRadius: BorderRadius.only(topRight: Radius.circular(16))
              //       ),
              //
              //     ),
              //   ),
              // ),







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
    throw UnimplementedError();
  }
}


class  SecondWaveClipper extends CustomClipper<Path>{
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
    throw UnimplementedError();
  }
}
