import 'package:excel_it_task/screen/card_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model_class/drive_model_class.dart';
import '../widgets/main_bottom_nav_bar.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color color;
  final double value;
  final Widget? child;

  CustomCircularProgressIndicator({
    this.size = 0,
    this.strokeWidth = 5.0,
    this.color = Colors.red,
    this.value = 0.97,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: _CustomCircularProgressPainter(
            strokeWidth: strokeWidth,
            color: color,
            value: value,
          ),
          size: Size.square(size),
        ),
        if (child != null) child!,
      ],
    );
  }
}

class _CustomCircularProgressPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;
  final double value;

  _CustomCircularProgressPainter({
    required this.strokeWidth,
    required this.color,
    required this.value,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - (strokeWidth / 2);

    final progressPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;






    final double startAngle = -pi / 2 + (80 * pi / 180); // Convert degrees to radians
    final double sweepAngle = -2 * pi * value;









    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(_CustomCircularProgressPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

// Usage example
class CircleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: IconButton(
              onPressed: () {  }, icon: Icon(Icons.person,color: Colors.green,),
              
            ),
          )
        ],

      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.0.sp,right: 16.sp,),
        child: Column(
          children: [
            Center(
              child: CustomCircularProgressIndicator(
                size: 100.0,
                strokeWidth: 8.0,
                color: AppColor.appPrimaryColor,
                value: 0.97,
                child: Text(
                  '23.1 GB ',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ),
            ),

            SizedBox(height: 20.h,),

            Padding(
              padding: EdgeInsets.only(right: 14.0.w,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                   children: [
                     Text('Sort by: Recent',style: circleScreenHeaderTextStyle(),),
                     Icon(Icons.arrow_drop_down,size: 16.sp,)
                   ],
                 ),
                  Container(
                    height: 27.h,
                    width: 30.w,
                    decoration: BoxDecoration(

                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      border: Border.all(
                        color: Colors.white10,
                        width: 2.w
                      )
                    ),
                    child: Icon(Icons.add_alert,size: 13.sp,),


                  )


                ],
              ),
            ),

            SizedBox(height: 20.h,),

            GridView.builder(
                shrinkWrap: true,
                itemCount: drives.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,

                ),
                itemBuilder: (context,index){
                  final drive = drives[index];
                  return Column(
                    children: [
                      Icon(drive.icon!.icon, size: 35.sp,color: Colors.grey,),
                      SizedBox(height: 8.h,),
                      Text(drive.driveName!,style: cirleScreenSubHeaderTextStyle(),),
                      Text(drive.driveSize!,style: circleScreenOtherTextStyle(),)
                    ],
                  );


                })










          ],
        ),
      ),



    );
  }
}
