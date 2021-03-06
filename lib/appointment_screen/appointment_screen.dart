import 'package:apex/widgets/history_card.dart';
import 'package:apex/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmenScreen extends StatefulWidget {
  const AppointmenScreen({Key? key}) : super(key: key);

  @override
  _AppointmenScreenState createState() => _AppointmenScreenState();
}

class _AppointmenScreenState extends State<AppointmenScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 289.h,
                child: Stack(children: [
                  Positioned(
                      child: Image(
                          image: AssetImage('assets/images/ellipse.png'))),
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
                      left: 167.h,
                      height: 115.h,
                      child: Image(image: AssetImage('assets/images/car.png')))
                ]),
              ),
              SizedBox(height: 24.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33.w),
                  child: Column(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Appointment History',
                        style: TextStyle(
                          color: Color(0xff414141),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Visits',
                        style: TextStyle(
                          color: Color(0xff414141),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Stack(children: [
                      HistoryCard(),
                      Positioned(
                        top: 340,
                        right: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            child: FloatingActionButton(
                              child: Image.asset('assets/images/phone.png'),
                              onPressed: () {},
                              backgroundColor: Color(0xffF48129),
                            ),
                          ),
                        ),
                      ),
                    ])
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(width: 12.w),
              Text('Lamborghini',
                  style: TextStyle(
                    color: Color(0xff414141),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 65.w,
            ),
            child: Text('Centenario',
                style: TextStyle(
                  color: Color(0xff838383),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                )),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Text('DUBAI D 477459',
                style: TextStyle(
                  color: Color(0xff838383),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                )),
          )
        ]),
      ),
      // child: ListTile(
      //   leading: Image(image: AssetImage('assets/images/logo.png')),
      //   title: Text(
      //     'Lamborghini',
      //     style: TextStyle(
      //         color: Color(0xff414141),
      //         fontSize: 25.sp,
      //         fontWeight: FontWeight.w700),
      //   ),
      //   subtitle: Text('Centenario',
      //       style: TextStyle(
      //           color: Color(0xff838383),
      //           fontSize: 18.sp,
      //           fontWeight: FontWeight.w400)),
      // ),
    );
  }
}
