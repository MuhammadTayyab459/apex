import 'package:apex/appointment_screen/appointment_screen.dart';
import 'package:apex/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VisitDetail extends StatelessWidget {
  const VisitDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: NavBar(),
            body: Container(
              height: 900.h,
              child: Stack(children: [
                Positioned(
                    child:
                        Image(image: AssetImage('assets/images/ellipse.png'))),
                Positioned(
                    top: 58.h,
                    left: 33.w,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_left,
                          size: 32.sp,
                        ))),
                Positioned(top: 97.h, left: 33.w, child: Logo()),
                Positioned(
                    top: 174.h,
                    left: 33.w,
                    child: SizedBox(
                      height: 610.h,
                      width: 347.w,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Visit Details',
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 56.h,
                              ),
                              VisitRow(
                                icon: Icons.monetization_on_outlined,
                                title: 'Arrival Date',
                              ),
                              VerticalDiv(),
                              VisitRow(
                                icon: Icons.monetization_on_outlined,
                                title: 'Completed Date',
                              ),
                              VerticalDiv(),
                              VisitRow(
                                icon: Icons.monetization_on_outlined,
                                title: 'Body Repair',
                              ),
                              VerticalDiv(),
                              VisitRow(
                                icon: Icons.monetization_on_outlined,
                                title: 'Engine Repair',
                              ),
                              VerticalDiv(),
                              VisitRow(
                                icon: Icons.monetization_on_outlined,
                                title: 'Total Cost',
                              ),
                              VerticalDiv(),
                              ListTile(
                                leading: Icon(
                                  Icons.monetization_on,
                                  color: Color(0xffF48129),
                                ),
                                title: Text(
                                  '200 AED',
                                  style: TextStyle(
                                      color: Color(0xffF48129),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                horizontalTitleGap: 0,
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  FloatingActionButton(
                                    child:
                                        Image.asset('assets/images/phone.png'),
                                    onPressed: () {},
                                    backgroundColor: Color(0xffF48129),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ]),
            )));
  }
}

class VerticalDiv extends StatelessWidget {
  const VerticalDiv({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 11.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 3,
              height: 30.h,
              color: Color(0xffF48129),
            ),
          ),
        ),
        SizedBox(
          height: 11.h,
        ),
      ],
    );
  }
}

class VisitRow extends StatelessWidget {
  final String title;
  final IconData icon;
  const VisitRow({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0xffF48129),
        ),
        SizedBox(
          width: 15.w,
        ),
        Text(title,
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            )),
        Spacer(),
        Icon(
          Icons.calendar_today_outlined,
          color: Color(0xffF48129),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          '13:00, 05 Sept',
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffF48129)),
        )
      ],
    );
  }
}
