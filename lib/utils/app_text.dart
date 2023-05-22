import 'package:excel_it_task/screen/card_screen.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

appHeaderTextStyle() {
  return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.4,
      color: Colors.black87);
}


appSubTextStyle() {
  return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.4,
      color: Colors.black54);
}


///......>>.......onBoarding screen TextStyle......<<

 onBordingScreenHeaderTextStyle(){
  return TextStyle(
    fontSize: 22.sp,
    letterSpacing: 0.4.w,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );


 }


 onBordingScreenSubHeaderTextTextStyle(){

   return TextStyle(
       fontSize: 22.sp,
       letterSpacing: 0.4.w,
       fontWeight: FontWeight.w500,
       color: Colors.black
   );

 }


 onBordingScreenTextStyle(){
   return TextStyle(
       fontSize: 10,
       letterSpacing: 0.4,
       fontWeight: FontWeight.w400,
       color: Colors.black54
   );


 }


///.....>> Reedem screen....TextStyle.....<<

redeemScreenHeaderTextStyle(){
  return TextStyle(
      fontSize: 22.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );


}

redeemScreenSubHeaderTextTextStyle(){

  return TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w500,
      color: Colors.black54
  );

}

redeemScreenOtherTextTextStyle(Color color){

  return TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w500,
      color: color
  );

}



///.....>> Card screen....TextStyle.....<<

cardScreenTextStyle() {
  return TextStyle(
      fontSize: 18.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w600,
      color: Colors.grey
  );
}

  cardScreenHeaderTextStyle() {
    return TextStyle(
        fontSize: 18.sp,
        letterSpacing: 0.4.w,
        fontWeight: FontWeight.bold,
        color: Colors.black
    );
  }


//loginScreen  TextStyle

loginScreenHeaderTextStyle() {
  return TextStyle(
      fontSize: 28.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.black54
  );
}


loginScreeTextStyle() {
  return TextStyle(
      fontSize: 20.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.black54
  );
}






loginScreenSubHeaderTextStyle() {
  return TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.bold,
      color: AppColor.appPrimaryColor
  );
}


// cirleProgress indicator  screen text style


cirleScreenSubHeaderTextStyle() {
  return TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.black87
  );
}

circleScreenHeaderTextStyle() {
  return TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.black87
  );

}

circleScreenOtherTextStyle() {
  return TextStyle(
      fontSize: 10.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.black54
  );
}




// ticketSchdule screen text style

ticketScreenSubHeaderTextStyle() {
  return TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.w800,
      color: Colors.grey
  );
}

ticketScreenHeaderTextStyle() {
  return TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.4.w,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
}
