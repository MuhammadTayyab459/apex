import 'package:apex/home_screen/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BelowTitle extends StatelessWidget {
  const BelowTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 32.h),
        Text(
          'Hi, Habib!',
          style: kStylingHeader,
        ),
        // SizedBox(height: 10.h),
        SizedBox(height: 31.h),
        Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('My Vehicals', style: kVehicle)),
                  Text('Veiw All', style: kView)
                ])),
      ],
    );
  }
}
