

import 'dart:math';

import 'package:excel_it_task/screen/ticket_details_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketScheduleScreen extends StatefulWidget {
  const TicketScheduleScreen({Key? key}) : super(key: key);

  @override
  State<TicketScheduleScreen> createState() => _TicketScheduleScreenState();
}

class _TicketScheduleScreenState extends State<TicketScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf0f2f6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [


                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                      color: AppColor.appPrimaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r)
                      )
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
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
                      Positioned(
                        top: 20.h,
                        right: -170.w,
                        bottom: -90.h,
                        child: Container(
                          height: 300.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color: AppColor.appPrimaryColor,
                            border: Border.all(
                                color: Color(0XFF115CCF),
                                width: 40.w
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30.h,
                        left: 25.w,
                        right: 25.w,
                        child: Column(
                          children: [
                            Text('Journey',style: TextStyle(fontSize: 14.sp,color: Colors.white,letterSpacing: 0.6),),
                            SizedBox(height: 15.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('JFK',style: TextStyle(fontSize: 14.sp,color: Colors.white,letterSpacing: 0.6)),
                                SizedBox(width: 5.w,),
                                Container(
                                  width: 25.w,
                                  height: 1.h,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5.w,),

                                Transform.rotate(
                                    angle: pi/2,
                                    child: Icon(Icons.airplanemode_on,color: Colors.white,size: 20.sp,)),
                                SizedBox(width: 5.w,),
                                Container(
                                  width: 25.w,
                                  height: 1.h,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 5.w,),
                                Text('SBY',style: TextStyle(fontSize: 14.sp,color: Colors.white,letterSpacing: 0.6)),


                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketDetailsScreen()));
                                }, child: Text('Next',style: TextStyle(color: Colors.red,fontSize: 18.sp),))

                              ],
                            )
                          ],
                        ),
                      )



                    ],
                  ),
                ),









                Positioned(
                  top:42.h,
                  left: 20.w,
                  child: Container(
                    height: 20,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.r)
                    ),

                    
                  ),
                ),





                Padding(
                  padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 130,bottom: 8.h),
                  child: Row(
                    children: [
                      ClipPath(
                        clipper:WaveClipper(),
                        child: Container(

                          height: 120.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20.r),
                                  bottomLeft: Radius.circular(8.r),
                                  topLeft:  Radius.circular(8.r),
                              )
                          ),

                          child: Center(
                            child: Container(
                              height: 50.h,
                              width: 50.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                              ),
                              child: Center(child: Text('Air Asia',style: TextStyle(fontSize: 12.sp,color: Colors.white),)),
                            ),
                          ),

                        ),





                      ),
                      Expanded(

                        child: ClipPath(
                          clipper:WaveClipper2(),
                          child: Container(
                            height: 120.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.r),
                                    bottomRight: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r),

                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Departure',style: ticketScreenSubHeaderTextStyle(),),
                                        Text('Arrive',style: ticketScreenSubHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('05:21am',style: ticketScreenHeaderTextStyle(),),
                                        Text('08:43am',style: ticketScreenHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Flight No',style: ticketScreenSubHeaderTextStyle(),),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('NNS24',style: ticketScreenHeaderTextStyle(),),
                                        Text('\$215',style: ticketScreenHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              itemCount: 5,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 8.h,
              ),
              itemBuilder: (BuildContext context, int index) {
                return  Padding(
                  padding: EdgeInsets.only(left: 20.w,right: 20.w),
                  child: Row(
                    children: [
                      ClipPath(
                        clipper:WaveClipper(),
                        child: Container(

                          height: 120.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8.r),
                                  topLeft:  Radius.circular(8.r),
                                  bottomRight: Radius.circular(20.r,)
                              )
                          ),

                          child: Center(
                            child: Container(
                              height: 50.h,
                              width: 50.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red
                              ),
                              child: Center(child: Text('Air Asia',style: TextStyle(fontSize: 12.sp,color: Colors.white),)),
                            ),
                          ),

                        ),





                      ),
                      Expanded(

                        child: ClipPath(
                          clipper:WaveClipper2(),
                          child: Container(
                            height: 120.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r),
                                    bottomLeft: Radius.circular(20.r)
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Departure',style: ticketScreenSubHeaderTextStyle(),),
                                        Text('Arrive',style: ticketScreenSubHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('05:21am',style: ticketScreenHeaderTextStyle(),),
                                        Text('08:43am',style: ticketScreenHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Flight No',style: ticketScreenSubHeaderTextStyle(),),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(left: 12.0.w,bottom: 8.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('NNS24',style: ticketScreenHeaderTextStyle(),),
                                        Text('\$215',style: ticketScreenHeaderTextStyle(),),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                );
              },
            )




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
    path.lineTo(0,0);
    path.lineTo(size.width-13.w, 0);
    var firstStart = Offset(size.width-10.w, 13.h);
    var firstEnd = Offset(size.width, 13.h);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
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
class WaveClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0,size.height);
    path.lineTo(0, 14.h);
    var firstStart = Offset(11.w, 10.h);
    var firstEnd = Offset(13.w, 0);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);
    path.lineTo(size.width, 0);
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