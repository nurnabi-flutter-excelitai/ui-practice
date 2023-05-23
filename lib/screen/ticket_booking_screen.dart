
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

          Positioned(
            bottom: 0,
            right: -20,
            child: ClipPath(
              clipper: TicketBookingClipper(),
              child: Container(
                height: 600.h,
                width: 360.w,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}


class TicketBookingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height);
    final firstControl = Offset(size.width / 4, size.height / 4);
    final firstEnd = Offset(size.width / 2, 0);
    path.quadraticBezierTo(firstControl.dx, firstControl.dy, firstEnd.dx, firstEnd.dy);
    final secondControl = Offset(size.width * 3 / 4, size.height / 4);
    final secondEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControl.dx, secondControl.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}



// class TicketBookingClipper extends CustomClipper<Path>{
//   @override
//   getClip(Size size) {
//     var path = new Path();
//     path.moveTo(0, size.height);
//     var firstStart = Offset(0, size.height/2);
//     var firstEnd = Offset(size.width/2, 0);
//     path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);
//
//     var secondStart = Offset(size.width/2, 0);
//     var secondEnd = Offset(size.width, size.height);
//     path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx,secondEnd.dy);
//     path.lineTo(0, size.height);
//
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper oldClipper) {
//     // TODO: implement shouldReclip
//     return true;
//   }
// }
