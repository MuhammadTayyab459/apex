import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GNav(
        rippleColor: Color(0xffF48129),
        hoverColor: Color(0xffF48129),
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 12),
        tabBackgroundColor: Color(0xffF48129),
        color: Colors.grey,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'User',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ]);
  }
}
