import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserFeedBackScreen extends StatefulWidget {
  const UserFeedBackScreen({Key? key}) : super(key: key);

  @override
  State<UserFeedBackScreen> createState() => _UserFeedBackScreenState();
}

class _UserFeedBackScreenState extends State<UserFeedBackScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.appPrimaryColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,

            child: ClipPath(
              clipper: UserFeedBackClipper(),
              child: Container(
                height: 300.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -200,
            left: 0,
            right: 0,
            child: Container(
              height: 400.h,
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle

              ),
            ),
          )
        ],
      ),
    );
  }
}

class UserFeedBackClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var path = Path();
   path.lineTo(0, size.height/2);
   var firstStart = Offset(size.width/2, 0);
   var firstEnd = Offset(size.width, size.height/2);
   path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
   path.lineTo(size.width, size.height);
   path.lineTo(0, size.height);
   path.close();

   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
