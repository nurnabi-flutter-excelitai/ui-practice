

import 'package:excel_it_task/screen/cheackout_screen.dart';
import 'package:excel_it_task/screen/login_screen.dart';
import 'package:excel_it_task/screen/onboarding_screen.dart';
import 'package:excel_it_task/utils/const_file.dart';
import 'package:flutter/material.dart';

import '../screen/custom_progress_indicator.dart';
import '../screen/reedem_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    // Define your screens or widgets here

    ReedemScreen(),
    LoginScreen(),
    CheackOutScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColor.appPrimaryColor,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}



