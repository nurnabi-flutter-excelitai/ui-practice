
import 'package:excel_it_task/screen/onboarding_screen.dart';
import 'package:excel_it_task/screen/ticket_booking_screen.dart';
import 'package:excel_it_task/screen/ticket_schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Biman Ticket',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: TicketBookingScreen()
        );
      },

    );
  }
}

