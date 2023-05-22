import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:excel_it_task/screen/reedem_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String? _chosenValue;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 200.h),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 10.w,
                          color: AppColor.appPrimaryColor
                        )

                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Text('V A N T A G E',style: loginScreenHeaderTextStyle(),)

                ],
              ),
              SizedBox(height: 30.h,),
              Text('Welcome',style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w800,color: Colors.black87),),
              SizedBox(height: 10.h,),
              Text('Get Started by\ncreating your account',style: loginScreeTextStyle(),),
              SizedBox(height: 13.h,),



              DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    //isExpanded: true,

                    items: <String>[
                      'Item 1',
                      'Item 2',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                            value,
                            style: appSubTextStyle()

                        ),
                      );
                    }).toList(),
                    value: _chosenValue,







                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Country Region",
                            style: appSubTextStyle()
                          ),
                          Text(
                            "United States",
                            style: appHeaderTextStyle(),
                          ),
                        ],
                      ),
                    ),










                    onChanged: (value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },

                    ///......>>>.....dropdown button style  part ......<<

                    buttonStyleData: ButtonStyleData(
                      width: double.infinity,

                      //height: 30,

                      decoration: BoxDecoration(
                         border:Border.all(width: 0.7.w) ,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),

                    ),


                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      elevation: 8,
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility:
                        MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                  )),
              TextField(
                decoration: InputDecoration(

                  hintText: 'Phone number..',
                  hintStyle: TextStyle(color: Colors.black54,fontSize: 14.sp,fontWeight: FontWeight.w800),

                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 0.7, color: Colors.black), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 0.7, color: Colors.black), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.0),
                  )

                ),
              ),

              SizedBox(height: 10.h,),

              Center(child: TextButton(onPressed: (){}, child: Text('Privacy and agreements',style: loginScreenSubHeaderTextStyle(),))),

              SizedBox(height: 10.h,),

               SizedBox(
                 width: double.infinity,
                 height: 42.h,
                 child: ElevatedButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ReedemScreen()));
                   }, child: Text('LOGIN',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.grey.shade700,letterSpacing: 0.4),),
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.grey.shade300,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8.0.r),
                     ),
                   ),

                 ),
               )











            ],
          ),
        ),
      ),



    );
  }
}
