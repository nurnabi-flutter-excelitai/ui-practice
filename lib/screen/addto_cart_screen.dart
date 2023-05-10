import 'package:excel_it_task/utils/app_text.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:excel_it_task/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({Key? key}) : super(key: key);

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {

  bool isSelected = false;
  int _selectedValue = 1;

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
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                //height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/nancy_momoland.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
              ),
            ),
          ),




          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: AppColor.appBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),



                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10,top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mini Ash Dress',style: appHeaderTextStyle(),),
                          Text('\$ 700',style: appSubTextStyle(),),
                        ],
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('4.0',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
                              SizedBox(width: size*(4/360),),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: size*(3/360),),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: size*(3/360),),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.red,
                              ),
                              SizedBox(width: size*(3/360),),
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.red,
                              ),

                            ],
                          ),
                          Text('5.1 reviews',style: appSubTextStyle(),),
                          Text('\$ 700',style: appHeaderTextStyle(),),
                        ],
                      ),

                      SizedBox(height: 15,),

                      Padding(
                        padding: EdgeInsets.only(right: 30),
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
                        ],
                      )







                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     for (int i = 0; i <3; i++)
                      //       Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: CircleAvatar(
                      //           radius:10,
                      //           backgroundColor: AppColor.appPrimaryColor,
                      //           child: Icon(Icons.check,size: 5,),
                      //         ),
                      //       ),
                      //
                      //     Row(
                      //       children: [
                      //         for (int i = 0; i < 3; i++)
                      //           Padding(
                      //             padding: const EdgeInsets.all(8.0),
                      //             child: Container(
                      //               padding: EdgeInsets.all(8),
                      //               decoration: BoxDecoration(
                      //                   border: Border.all(
                      //                       color: Colors.black54, width: 2),
                      //                   borderRadius: BorderRadius.circular(10)),
                      //               child: Text('XL',style: appSubTextStyle(),),
                      //             ),
                      //           )
                      //       ],
                      //     ),
                      //
                      //
                      //
                      //   ],
                      // ),





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
