
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





              CustomPaint(
                child: Container(
                  color: Colors.red,
                  width: 340,
                  height: 50,
                  child: CustomPaint(
                    painter: RPSCustomPainter(),
                  ),
                ),
                painter: RPSCustomPainter(),
              ),











              // Container(
              //   height: 40.h,
              //   width: 230.w,
              //   decoration: BoxDecoration(
              //     color: Colors.blue
              //   ),
              //
              //   child: Center(child: Text('D C W W 256',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600,color: Colors.white),)),
              //
              // ),













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
                          height: 27.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                            color: Colors.grey.withOpacity(0.2)
                          ),
                          child: Center(child: Text('+\$5',style: TextStyle(fontSize: 13.sp,color: AppColor.appPrimaryColor,fontWeight: FontWeight.w800),)),
                        ),
                      );
                    }),
              )













            ],
          ),
        ),
      ),





    );
  }
}



class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()

      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width,0);
    path0.lineTo(size.width,size.height*0.4090833);
    path0.quadraticBezierTo(size.width*0.9562647,size.height*0.4147500,size.width*0.9556471,size.height*0.4923333);
    path0.quadraticBezierTo(size.width*0.9555000,size.height*0.5846667,size.width,size.height*0.5922500);
    path0.lineTo(size.width,size.height);
    path0.lineTo(0,size.height);
    path0.lineTo(0,size.height*0.6539167);
    path0.quadraticBezierTo(size.width*0.0622059,size.height*0.5751667,size.width*0.0514412,size.height*0.5355000);
    path0.quadraticBezierTo(size.width*0.0575588,size.height*0.4667500,size.width*0.0019412,size.height*0.4373333);
    path0.lineTo(0,0);
    path0.lineTo(size.width,0);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

