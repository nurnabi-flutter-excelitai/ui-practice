
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:excel_it_task/screen/card_screen.dart';
import 'package:excel_it_task/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/app_elevated_button.dart';
import '../widgets/custom_appbar.dart';

class CheackOutScreen extends StatefulWidget {
  const CheackOutScreen({Key? key}) : super(key: key);

  @override
  State<CheackOutScreen> createState() => _CheackOutScreenState();
}

class _CheackOutScreenState extends State<CheackOutScreen> {


  String? _selectedItem;
  String? _chosenValue;

  final List<String> _dropdownItems = ['item1','item2','item3'];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: reUseAppbar('My CART','2 ITEMS'),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 16.0.w,right: 16.w, top: 40.h),
          child: Column(
            children: [
              Container(
                //height: 200.h,
                //color: Colors.red,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: Container(
                          height: 60.h,

                          decoration: BoxDecoration(
                            color: Color(0XFFe2e4e3),
                            borderRadius: BorderRadius.all(Radius.circular(8.r))

                          ),
                          child: Image.asset('images/shoes.jpg',fit: BoxFit.fitHeight,),




                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Patch Sneaker',style: appHeaderTextStyle(),),
                            Text('WHITE',style: appSubTextStyle(),),
                            Text('\$ 130.50',style: appHeaderTextStyle(),),


                          ],
                        )),
                    Expanded(
                         flex: 1,
                        child: Padding(
                          padding:  EdgeInsets.only(top: 8.0.h,bottom: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                               height:20.h,
                               width: 17.w,
                               decoration: BoxDecoration(
                                   color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(50.r))
                               ),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50,
                                    child: Text('x1',style: appSubTextStyle(),)),
                              ),
                              SizedBox(height: 10.h,),

                              Container(
                                height:20.h,
                                width: 17.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey,

                                    borderRadius: BorderRadius.all(Radius.circular(50.r))
                                ),
                                child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('42',style: appSubTextStyle(),)),
                              ),
                            ],
                          ),
                        )),
                  ]
                ),
              ),
              Container(
                //height: 200.h,
                //color: Colors.red,
                width: double.infinity,
                child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.w),
                          child: Container(
                            height: 60.h,

                            decoration: BoxDecoration(
                                color: Color(0XFFe2e4e3),
                                borderRadius: BorderRadius.all(Radius.circular(8.r))

                            ),
                            child: Image.asset('images/shoes.jpg',fit: BoxFit.fitHeight,),




                          ),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Patch Sneaker',style: appHeaderTextStyle(),),
                              Text('WHITE',style: appSubTextStyle(),),
                              Text('\$ 130.50',style: appHeaderTextStyle(),),


                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding:  EdgeInsets.only(top: 8.0.h,bottom: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height:20.h,
                                  width: 17.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(50.r))
                                  ),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 50,
                                      child: Text('x1',style: appSubTextStyle(),)),
                                ),
                                SizedBox(height: 10.h,),

                                Container(
                                  height:20.h,
                                  width: 17.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,

                                      borderRadius: BorderRadius.all(Radius.circular(50.r))
                                  ),
                                  child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('42',style: appSubTextStyle(),)),
                                ),
                              ],
                            ),
                          )),
                    ]
                ),
              ),



           SizedBox(height: 60.h,),

              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.green,
                    width: 1
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 20.0.w,right: 8.w),
                  child: Row(

                    children: [
                      Icon(Icons.local_shipping,color: Colors.green,),

                      Padding(
                        padding:  EdgeInsets.only(left: 25.0.w, top: 10.h),
                        child: DropdownButtonHideUnderline(
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







                              hint: Column(
                                children: [
                                  Text(
                                    "Shipping",
                                    style: appHeaderTextStyle(),
                                  ),
                                  Text(
                                    "4 - 5 days",
                                    style: appSubTextStyle(),
                                  ),
                                ],
                              ),










                              onChanged: (value) {
                                setState(() {
                                  _chosenValue = value;
                                });
                              },

                              ///......>>>.....dropdown button style  part ......<<

                              buttonStyleData: ButtonStyleData(

                                //height: 30,
                                width: 240.w,
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(10),
                                //   color: Colors.white,
                                // ),
                                elevation: 2,
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
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15.h,),
              
              Container(

                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: Colors.grey,width: 0.09.w)
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 20.0.w,right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.cancel,color: Colors.blue,size: 17,),
                      Text('Promo Code',style: appHeaderTextStyle(),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('GLBJNVY',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),),

                          Icon(Icons.check_circle,color: Colors.green,size: 17,),
                        ],
                      )


                    ],
                  ),
                ) ,

              ),

              SizedBox(height: 15.h,),
              Container(
                //height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('TOTAL \$170,',style: appHeaderTextStyle(),),
                    AppElevatedBtn(btnText: 'CHECKOUT', onTap: () {  },)
                  ],
                ),
              ),

              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CardScreen()));
              },
                  child: Text('Next'))



              
              












            ],
          ),
        ),
      ),


    );
  }


}
