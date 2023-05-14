import 'package:excel_it_task/screen/addto_cart_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/onboarding.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   late Material materialButton;
//   late int index;
//   final onboardingPagesList = [
//
//
//     PageModel(
//       widget: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image.asset('images/nancy_momoland.jpeg'),
//             Text('Storage to support',style: onBordingScreenSubHeaderTextTextStyle(),),
//             Text('Your coonectivity',style:onBordingScreenHeaderTextStyle(),),
//
//             // page description
//             Text(AppAllText.onBoardingScreenDescription,style: onBordingScreenTextStyle(),),
//           ],
//         ),
//       ),
//       // Add padding between this and the next widget
//
//     ),
//     PageModel(
//       widget: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image.asset('images/nancy_momoland.jpeg'),
//             Text('Storage to support',style: onBordingScreenSubHeaderTextTextStyle(),),
//             Text('Your coonectivity',style:onBordingScreenHeaderTextStyle(),),
//
//             // page description
//             Text(AppAllText.onBoardingScreenDescription,style: onBordingScreenTextStyle(),),
//           ],
//         ),
//       ),
//       // Add padding between this and the next widget
//
//     ),
//     PageModel(
//       widget: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image.asset('images/nancy_momoland.jpeg'),
//             Text('Storage to support',style: onBordingScreenSubHeaderTextTextStyle(),),
//             Text('Your coonectivity',style:onBordingScreenHeaderTextStyle(),),
//
//             // page description
//             Text(AppAllText.onBoardingScreenDescription,style: onBordingScreenTextStyle(),),
//           ],
//         ),
//       ),
//       // Add padding between this and the next widget
//
//     ),
//
//
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     materialButton = _skipButton();
//     index = 0;
//   }
//
//   Material _skipButton({void Function(int)? setIndex}) {
//     return Material(
//       borderRadius: defaultSkipButtonBorderRadius,
//       color: defaultSkipButtonColor,
//       child: InkWell(
//         borderRadius: defaultSkipButtonBorderRadius,
//         onTap: () {
//           if (setIndex != null) {
//             index = 2;
//             setIndex(2);
//           }
//         },
//         child: const Padding(
//           padding: defaultSkipButtonPadding,
//           child: Text(
//             'Skip',
//             style: defaultSkipButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Material get _signupButton {
//     return Material(
//       borderRadius: defaultProceedButtonBorderRadius,
//       color: defaultProceedButtonColor,
//       child: InkWell(
//         borderRadius: defaultProceedButtonBorderRadius,
//         onTap: () {},
//         child: const Padding(
//           padding: defaultProceedButtonPadding,
//           child: Text(
//             'Sign up',
//             style: defaultProceedButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//           padding:  EdgeInsets.only(left: 12.0.w,right: 12.w,top: 30.h),
//           child: Onboarding(
//             pages: onboardingPagesList,
//             onPageChange: (int pageIndex) {
//               index = pageIndex;
//             },
//             startPageIndex: 0,
//             footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//               return DecoratedBox(
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   border: Border.all(
//                     width: double.infinity,
//                     color: background,
//                   ),
//                 ),
//                 child: ColoredBox(
//                   color: Colors.white,
//                   child: Padding(
//                     padding:  EdgeInsets.all(45.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CustomIndicator(
//                           netDragPercent: dragDistance,
//                           pagesLength: pagesLength,
//                           indicator: Indicator(
//                             indicatorDesign: IndicatorDesign.line(
//                               lineDesign: LineDesign(
//                                 lineType: DesignType.line_uniform,
//                                 activeColor: Colors.blue,
//                                 inactiveColor: Colors.grey, // set the inactive color
//                               ),
//                             ),
//                           ),
//                           selectedColor: Colors.red, // set the selected color
//                         ),
//
//
//                         index == pagesLength - 1
//                             ? _signupButton
//                             : _skipButton(setIndex: setIndex)
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       );
//
//   }
// }

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCartScreen()));
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
            )
          ],
        ),
      ),
    );
  }
}
