
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_text.dart';

class ReedemScreen extends StatefulWidget {
  const ReedemScreen({Key? key}) : super(key: key);

  @override
  State<ReedemScreen> createState() => _ReedemScreenState();
}

class _ReedemScreenState extends State<ReedemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('SHARE',style: TextStyle(color: Colors.black,letterSpacing: 0.4,fontSize: 12.sp,fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: () { 
            
            
          }, icon: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 10,
            child: Icon(Icons.arrow_back_ios_sharp,color: Colors.black87,size: 12,)),),
        
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(left: 14.0.w,right: 14.w,top: 28.h),
          child: Column(
            children: [
              Center(child: Image.asset('images/nancy_momoland.jpeg',height: 100.h,)),
              SizedBox(height: 20.h,),
              Text('Redeem \$50',style: redeemScreenHeaderTextStyle(),),
              SizedBox(height: 10.h,),
              Text(AppAllText.reedemScreenDescription,style: redeemScreenSubHeaderTextTextStyle(),textAlign: TextAlign.center,),

              SizedBox(height: 10.h,),

              Container(
                height: 40.h,
                width: 230.w,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),

                child: Center(child: Text('D C W W 256',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600,color: Colors.white),)),

              ),

              SizedBox(height: 20.h,),

              Text('OR SEND INVITE',style: redeemScreenSubHeaderTextTextStyle(),),

              SizedBox(height: 20.h,),

              ListTile(
                leading: Container(
                  height: 28.h,
                  width: 40.w,

                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.white,
                    size: 13,

                  ),
                ),
                title: Text('Add Friend',style: redeemScreenOtherTextTextStyle(Colors.blue),),
              )













            ],
          ),
        ),
      ),





    );
  }
}
