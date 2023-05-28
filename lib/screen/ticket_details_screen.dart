import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:excel_it_task/screen/ticket_booking_screen.dart';
import 'package:excel_it_task/screen/ticket_schedule_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/widgets/my_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const_file.dart';

class TicketDetailsScreen extends StatefulWidget {
  const TicketDetailsScreen({Key? key}) : super(key: key);

  @override
  State<TicketDetailsScreen> createState() => _TicketDetailsScreenState();
}

class _TicketDetailsScreenState extends State<TicketDetailsScreen> {
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
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(40.r))),
                  child: Stack(
                    children: [
                      Positioned(
                          left:130.w,
                          right: 25.w,
                          top: 30.h,
                          child: Text('Ticket Details',style: TextStyle(fontSize: 16.sp,color: Colors.white),)),
                      Positioned(
                        top: -90.h,
                        left: -90.w,
                        child: Container(
                          height: 200.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                            color: AppColor.appPrimaryColor,
                            border: Border.all(
                                color: Color(0XFF115CCF), width: 30.w),
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
                                color: Color(0XFF115CCF), width: 40.w),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),





                Positioned(
                  top: 85.h,
                  left: 10.w,
                  right: 10.w,
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: TicketDetailsClipper1(),
                        child: Container(
                          height: 100.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6.r),
                                  topRight: Radius.circular(6.r))),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0.h, left: 30.w,right: 30.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('JFK',style: TextStyle(fontSize: 14.sp,color: Colors.black,letterSpacing: 0.6)),
                                SizedBox(width: 5.w,),
                                Container(
                                  width: 25.w,
                                  height: 1.h,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5.w,),

                                Transform.rotate(
                                    angle: pi/2,
                                    child: Icon(Icons.airplanemode_on,color: AppColor.appPrimaryColor,size: 20.sp,)),
                                SizedBox(width: 5.w,),
                                Container(
                                  width: 25.w,
                                  height: 1.h,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5.w,),
                                Text('SBY',style: TextStyle(fontSize: 14.sp,color: Colors.black,letterSpacing: 0.6)),


                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketBookingScreen()));
                                }, child: Text('Next',style: TextStyle(color: Colors.red,fontSize: 18.sp),))

                              ],
                            )
                          ),



                        ),
                      ),






















                      //...separator...











                      Padding(
                        padding:  EdgeInsets.only(left: 16.h,right: 16.h),
                        child: MySeparator(),
                      ),

                      //.....2nd clippath
                      ClipPath(
                        clipper: TicketDetailsClipper2(),
                        child: Container(
                          height: 230.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(6.r),
                                  bottomRight: Radius.circular(6.r))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 16.0.w, right: 16.w, top: 30.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //....1st row....
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 50.h,
                                        width: 50.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red),
                                        child: Center(
                                            child: Text(
                                              'Air Asia',
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.0.w,
                                          right: 16.w,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Airline',
                                                  style:
                                                  ticketDetailsScreenSubHeaderTextStyle(),
                                                ),
                                                Text(
                                                  'Air Asia',
                                                  style:
                                                  ticketDetailsScreenHeaderTextStyle(),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Passenger',
                                                  style:
                                                  ticketDetailsScreenSubHeaderTextStyle(),
                                                ),
                                                Text(
                                                  'James Chirstian',
                                                  style:
                                                  ticketDetailsScreenHeaderTextStyle(),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Date',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          '24 Mar 2020',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gate',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          '24A',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Flight No',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          'NNS24',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                //....3rd row
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Boarding Time',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          '02:39 pm',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Seat',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          '5A',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'class',
                                          style:
                                          ticketDetailsScreenSubHeaderTextStyle(),
                                        ),
                                        Text(
                                          'Economy',
                                          style:
                                          ticketDetailsScreenHeaderTextStyle(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      MySeparator(),




                      Container(
                       height: 100.h,
                       width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.r),bottomLeft: Radius.circular(10.r))
                        ),
                        child: Image.network(
                            'https://thumbs.dreamstime.com/b/barcode-vector-icon-bar-code-web-barcode-vector-icon-bar-code-web-white-background-169690153.jpg'),
                      ),

                      SizedBox(height: 20.h ,),

                      Container(
                        height: 80.h,
                        width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0.h,left: 12.w,right: 12.w),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1 Passenger',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  ),

                                  SizedBox(height: 10.h,),
                                  Text(
                                    'Insurance',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  ),
                                ],
                              ),

                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$215',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  ),

                                  SizedBox(height: 10.h,),
                                  Text(
                                    '_',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                      MySeparator(),


                      Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: 14.0.h,left: 12.w,right: 12.w),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  ),

                                ],
                              ),

                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\$215',
                                    style:
                                    ticketDetailsScreenHeaderTextStyle(),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ),








              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TicketDetailsClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 16.h);

    var firstStart = Offset(12.w, size.height - 10.h);
    var firstEnd = Offset(12.w, size.height);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    path.lineTo(size.width - 14.w, size.height);
    var secondStart = Offset(size.width - 12.w, size.height - 10.h);
    var secondEnd = Offset(size.width, size.height - 12.h);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class TicketDetailsClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(12.w, 0);
    var firstStart = Offset(10.w, 10.h);
    var firstEnd = Offset(0, 12.h);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    path.lineTo(0, size.height);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 16.h);
    var secondStart = Offset(size.width - 12.w, 12.h);
    var secondEnd = Offset(size.width - 14.w, 0);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
