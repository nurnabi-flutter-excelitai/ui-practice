
import 'package:excel_it_task/screen/cheackout_screen.dart';
import 'package:excel_it_task/screen/ticket_schedule_screen.dart';
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





              Stack(
                children: [
                   ClipPath(
                    clipper: WaveClipper3(),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(

                        height: 50.h,
                        width: 360.w,
                        decoration: BoxDecoration(
                            color: AppColor.appPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(10.r))),
                      ),
                    ),
                  ),
                   Positioned(
                       top: 30.h,
                       left: 100.w,

                       child: Text('D C W W 2 5 6',style: TextStyle(fontSize: 18.sp,color: Colors.white),))

                ],
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
              ),

              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 2,
                    itemBuilder:(context,indext){
                      return ListTile(
                        leading: Container(
                          height: 35.h,
                          width: 40.w,

                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Center(child: Image.asset('images/girls.png',fit:BoxFit.cover,)),
                        ),
                        
                        
                        title: Text('Add Friend',style: redeemScreenOtherTextTextStyle(Colors.blue),),
                        subtitle: Text('joined',style: redeemScreenSubHeaderTextTextStyle(),),
                        trailing: Container(
                          height: 27 ,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                            color: Colors.grey.withOpacity(0.2)
                          ),
                          child: Center(child: Text('+\$5',style: TextStyle(fontSize: 13.sp,color: AppColor.appPrimaryColor,fontWeight: FontWeight.w800),)),
                        ),
                      );
                    }),
              ),



              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheackOutScreen()));
              }, child: Text('Next Page'))













            ],
          ),
        ),
      ),





    );
  }
}



class WaveClipper3 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height/2-5); //start
    var firstStart = Offset(size.width/8, size.height/2);
    var firstEnd = Offset(0, size.height-27);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx,firstEnd.dy);

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height/2+7);
    var secondStart= Offset(size.width-40, size.height/2+3);
    var secondEnd = Offset(size.width, size.height/2-7);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx,secondEnd.dy);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height/2-5);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

