

import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreenButton extends StatelessWidget {
  const OrderScreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Button action
      },
      style: ButtonStyle(

        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Set the border radius
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(AppColor.appPrimaryColor), // Set the background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ORDER REVIEW',
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.4

            ),
          ),
          SizedBox(width: 6.w,),

          CircleAvatar(
            radius: 15.r,
            child: Icon(

              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}