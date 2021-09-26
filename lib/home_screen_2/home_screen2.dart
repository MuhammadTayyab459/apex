import 'package:apex/home_screen/constants.dart';
import 'package:apex/widgets/history_card.dart';
import 'package:apex/widgets/navbar.dart';
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
                    child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {},
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/leading.png'))),
                            GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  maxRadius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/pic.png'),
                                ))
                          ])),
                  SizedBox(height: 42.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hi, User!',
                      style: kStylingHeader,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Which car needs help?',
                        textAlign: TextAlign.start, style: kCar),
                  ),
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
                  SizedBox(
                    height: 19.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 255.h,
                            width: 220.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Centenario',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    isThreeLine: true,
                                    subtitle: Text(
                                      'Lamborghini\nAWZ-879',
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    trailing: Image(
                                        image: AssetImage(
                                            'assets/images/logo2.png')),
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      (Image(
                                          image: AssetImage(
                                              'assets/images/car2.png'))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 53.h,
                                  ),
                                  CustomButton(
                                    tap: () => print('pressed'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            height: 255.h,
                            width: 220.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Centenario',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    isThreeLine: true,
                                    subtitle: Text(
                                      'Lamborghini\nAWZ-879',
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    trailing: Image(
                                        image: AssetImage(
                                            'assets/images/logo2.png')),
                                  ),
                                  Row(
                                    children: [
                                      Spacer(),
                                      (Image(
                                          image: AssetImage(
                                              'assets/images/car2.png'))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 53.h,
                                  ),
                                  CustomButton(
                                    tap: () => print('pressed'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 33.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose Services',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text('View All',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff838383)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ServiceButton(text: 'Repair'),
                        SizedBox(
                          width: 25.w,
                        ),
                        ServiceButton(text: 'Insurance'),
                        SizedBox(
                          width: 25.w,
                        ),
                        ServiceButton(text: 'Parts'),
                        SizedBox(
                          width: 25.w,
                        ),
                        ServiceButton(text: 'Battery'),
                      ],
                    ),
                  ),
                  Row(children: [
                    Spacer(),
                    FloatingActionButton(
                      child: Image.asset('assets/images/phone.png'),
                      onPressed: () {},
                      backgroundColor: Color(0xffF48129),
                    ),
                  ])
                ])))));
  }
}

class ServiceButton extends StatelessWidget {
  const ServiceButton({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 84.0,
        height: 121.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Color(0xffF48129).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 6), // changes position of shadow
              ),
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo2.png'),
            Text(
              text,
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ));
  }
}
