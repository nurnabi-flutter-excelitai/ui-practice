

import 'dart:math';

import 'package:excel_it_task/screen/oreder_review_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../widgets/app_textform_filed.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/order_screen_button.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  DateTime selectedDate = DateTime.now();
  bool _enabled = false;
  final controller = ValueNotifier<bool>(false);
  TextEditingController fromDateController = TextEditingController();


  void _selectedFromDate(BuildContext context) {
    DateFormat formatter = DateFormat('dd/MM/yyyy');
    showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    ).then((pickedFromDate) {
      if (pickedFromDate != null) {
        setState(() {
          selectedDate = pickedFromDate;
          fromDateController.value = TextEditingValue(text: formatter.format(pickedFromDate));
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: reUseAppbar('PAYMENT DETAILS','2 items'),








      body: Padding(
        padding:  EdgeInsets.only(top: 32.0,left: 16,right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)


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

                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(12))
                          ),

                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: SecondWaveClipper(),

                      child: Container(
                        // width: 340,
                        // height: 200,

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r,),topRight: Radius.circular(12.r))
                        ),

                      ),
                    ),
                    ClipPath(
                      clipper: ThirdWaveClipper(),

                      child: Container(
                        // width: 340,
                        // height: 200,

                        decoration: BoxDecoration(
                          color: Colors.green,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.r,),topRight: Radius.circular(12.r),topLeft: Radius.circular(12.r))

                        ),


                      ),
                    ),



                    Positioned(
                        right: 24.w,
                        bottom: 20.h,
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle
                          ),
                        )


                    ),
                    Positioned(
                        right: 42.w,
                        bottom: 20.h,
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                          ),
                        )


                    ),


                    Positioned(
                        left: 30.w,
                        top: 20.h,
                        child:  Text('John Smith',style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w700),)


                    ),

                    Positioned(
                        left: 30.w,
                        bottom: 20.h,
                        child:  Text('4756 *** *** 9018',style: TextStyle(fontSize: 16.sp,color: Colors.white,fontWeight: FontWeight.w700),)


                    ),
                    Positioned(
                        left: 30.w,
                        bottom: 50.h,
                        child:  Text('Amazon Platinium',style: TextStyle(fontSize: 14.sp,color: Colors.white,fontWeight: FontWeight.w500),)


                    ),








                  ],
                ),
              ),
              
              //...textform filed....

              SizedBox(height: 20.h,),
              Text('Card Holder',style: cardScreenTextStyle(),),
              UnderlineTextField(
                prefixIcon: Icon(Icons.person),
                hintText: 'Person name',

              ),

              SizedBox(height: 20.h,),
              Text('Card Number',style: cardScreenTextStyle(),),

              UnderlineTextField(
                prefixIcon: Icon(Icons.card_membership_outlined),
                hintText: '5488 0269 6686',
                suffixButton: Image.asset('images/Mastercard_2019_logo.svg.png',height: 7,width: 10,)


              ),

              SizedBox(height: 20.h,),

              Text('Expiry Date',style: cardScreenTextStyle(),),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  GestureDetector  (
                    onTap: (){
                      _selectedFromDate(context);
                    },
                    child: SizedBox(
                      width: 150.w,
                      child: UnderlineTextField(
                        prefixIcon: Icon( Icons.date_range),
                        hintText: '04/2016',

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: UnderlineTextField(
                      prefixIcon: Icon(Icons.lock),
                      hintText: '***',
                      // suffixButton: Container(
                      //   height: 20.h, // Adjust the height as desired
                      //   padding: EdgeInsets.all(2),
                      //   decoration: BoxDecoration(
                      //     color: Colors.red,
                      //     shape: BoxShape.circle,
                      //   ),
                      //   child: Icon(Icons.question_mark, size: 17, color: Colors.white),
                      // ),
                    ),
                  ),


                ],
              ),


              SizedBox(height: 30.h,),

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Save to My Cards',style: cardScreenTextStyle(),),

                 AdvancedSwitch(
                   controller: controller,
                   activeColor: Colors.green,
                   inactiveColor: Colors.grey,
                   borderRadius: BorderRadius.all(const Radius.circular(15)),
                   width: 50.0,
                   height: 25.0,
                   enabled: true,
                   //disabledOpacity: 0.5,
                 ),


               ],
             ),

              SizedBox(height: 30.h,),

              Padding(
                padding: EdgeInsets.only(left: 50.0.w,right: 50.w),
                child: SizedBox(
                  height: 50.h,
                  child: OrderScreenButton(),
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
    return false;
  }
}


class  SecondWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = Path();
    //..start line....
    path.lineTo(size.width-200.w, size.height/2.h);
    //...1st line
    path.lineTo(size.width, size.height-200.h);
    //...2nd line.....
    path.lineTo(size.width, 0);
    //...3rd line
    path.lineTo(0, 0);
    //...closing line
    path.lineTo(0, size.height-100.h);

    path.close();



    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}


class  ThirdWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = Path();

    //...starting......

    path.lineTo(0, 0);
    //1st
    path.lineTo(0, size.height);
    //2nd

    path.lineTo(size.width/2, size.height);

    //3rd

    path.lineTo(size.width-130.w, size.height-48.h);

    // 4 th
    path.lineTo(size.width-127.w, size.height-70.h);

    // 5 th
    path.lineTo(size.width-232.w, 0);

    // 6 th

    path.lineTo(0, 0);

    // 7 th
    path.lineTo(0, size.height);



    path.close();



    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
   return false;
  }
}







