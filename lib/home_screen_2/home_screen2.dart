import 'package:apex/home_screen_2/components/car_info_card.dart';
import 'package:apex/home_screen_2/components/services.dart';
import 'package:apex/widgets/habib.dart';
import 'package:apex/widgets/navbar.dart';
import 'package:apex/widgets/phone.dart';
import 'package:apex/widgets/titlebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: NavBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 33.w),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 25.h),
                        TitleBar(),
                        BelowTitle(),
                        SizedBox(height: 19.h),
                        CarinfoCard(),
                        SizedBox(height: 43.h),
                        ServicesRow(),
                        SizedBox(height: 38.h),
                        ServicesList(),
                        PhoneButton()
                      ]),
                ))));
  }
}
