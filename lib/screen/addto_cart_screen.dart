import 'package:excel_it_task/screen/cheackout_screen.dart';
import 'package:excel_it_task/screen/custom_progress_indicator.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:excel_it_task/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {

  bool isSelected = false;
  int _selectedValue = 1;
  int _selectedValue2 = 2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: AppColor.appPrimaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColor.appPrimaryColor,
            floating: true,
            expandedHeight: 300.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                //height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/nancy_momoland.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r),bottomRight: Radius.circular(30.r))),
              ),
            ),
          ),




          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 70.h),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: AppColor.appBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r))),



                child: Padding(
                  padding: EdgeInsets.only(left: 10.0.w,right: 10.w,top: 20.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mini Ash Dress',style: appHeaderTextStyle(),),
                          Text('\$ 700',style: appSubTextStyle(),),
                        ],
                      ),

                      SizedBox(height: 10.h,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('4.0',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12.sp),),
                              SizedBox(width: 4.h),
                              CircleAvatar(
                                radius: 4.r,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: 3.w,),
                              CircleAvatar(
                                radius: 4.r,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: 3.w,),
                              CircleAvatar(
                                radius: 4.r,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: 3.w,),
                              CircleAvatar(
                                radius: 4.r,
                                backgroundColor: Colors.red,
                              ),

                            ],
                          ),
                          Text('5.1 reviews',style: appSubTextStyle(),),
                          Text('\$ 700',style: appHeaderTextStyle(),),
                        ],
                      ),

                      SizedBox(height: 15.h,),

                      Padding(
                        padding:  EdgeInsets.only(right: 48.0.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Available Colors',style: appSubTextStyle(),),
                            Text('size',style: appSubTextStyle(),),
                          ],
                        ),
                      ),




                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                         Row(
                           children: [
                             Radio(
                               value: 1,
                               groupValue: _selectedValue,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue = value!;
                                 });
                               },
                             ),
                             Radio(
                               value: 2,
                               groupValue: _selectedValue,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue = value!;
                                 });
                               },
                             ),
                             Radio(
                               value: 3,
                               groupValue: _selectedValue,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue = value!;
                                 });
                               },
                             ),
                           ],
                         ),
                         Row(
                           children: [
                             Radio(
                               value: 1,
                               groupValue: _selectedValue2,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue2 = value!;
                                 });
                               },
                             ),
                             Radio(
                               value: 2,
                               groupValue: _selectedValue2,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue2 = value!;
                                 });
                               },
                             ),
                             Radio(
                               value: 3,
                               groupValue: _selectedValue2,
                               onChanged: (value) {
                                 setState(() {
                                   _selectedValue2 = value!;
                                 });
                               },
                             ),
                           ],
                         ),
                        ],
                      ),





                   TextButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CircleScreen()));
                   }, child: Text('Next'))







                    ],
                  ),
                ),



              ),
            ),
          )





        ],
      ),
    );
  }
}
