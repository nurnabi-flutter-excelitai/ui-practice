import 'package:excel_it_task/screen/addto_cart_screen.dart';
import 'package:excel_it_task/screen/ticket_booking_screen.dart';
import 'package:excel_it_task/screen/ticket_schedule_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/onboarding.dart';

import 'custom_progress_indicator.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive ? 12.0 : 8.0,
      width: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            REdgeInsets.only(left: 16.w, right: 16, bottom: 100.h, top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  SingleChildScrollView(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/nancy_momoland.jpeg'),
                        SizedBox(
                          height: 30.h,
                        ),

                        Text(
                          'Storage to support',
                          style: onBordingScreenSubHeaderTextTextStyle(),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Your coonectivity',
                          style: onBordingScreenHeaderTextStyle(),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        // page description
                        Text(
                          AppAllText.onBoardingScreenDescription,
                          style: onBordingScreenTextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/nancy_momoland.jpeg'),
                      Text(
                        'Storage to support',
                        style: onBordingScreenSubHeaderTextTextStyle(),
                      ),
                      Text(
                        'Your coonectivity',
                        style: onBordingScreenHeaderTextStyle(),
                      ),

                      // page description
                      Text(
                        AppAllText.onBoardingScreenDescription,
                        style: onBordingScreenTextStyle(),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/nancy_momoland.jpeg'),
                      Text(
                        'Storage to support',
                        style: onBordingScreenSubHeaderTextTextStyle(),
                      ),
                      Text(
                        'Your coonectivity',
                        style: onBordingScreenHeaderTextStyle(),
                      ),

                      // page description
                      Text(
                        AppAllText.onBoardingScreenDescription,
                        style: onBordingScreenTextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w,bottom: 3.h,),
                      child: Text("${_currentPage+1}/3"),
                    ),
                    Row(children: _buildPageIndicator()),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_currentPage == 2) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketScheduleScreen()));
                    } else {
                      _pageController.animateToPage(
                        _currentPage + 1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Text(
                    _currentPage == 2? 'Start' : 'Next',
                    style: TextStyle(fontSize: 14.0.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TicketScheduleScreen()));
            }, child: Text('SKIP',style: onBordingScreenTextStyle(),))
          ],
        ),
      ),
    );
  }
}
