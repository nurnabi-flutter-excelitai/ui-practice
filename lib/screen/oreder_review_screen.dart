

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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20.r))

            ),
            child: Stack(
              children: [
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20.r))

                    ),
                  ),
                )
              ],

            ),



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