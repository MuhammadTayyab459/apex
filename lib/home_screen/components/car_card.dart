import 'package:apex/home_screen/components/current_visit.dart';
import 'package:apex/home_screen/components/last_visit.dart';
import 'package:apex/home_screen/model/model.dart';
import 'package:apex/widgets/history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 402.2.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: HomeScreen1CarData.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: 25.w),
              child: SizedBox(
                height: 388.h,
                width: 287.w,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                      HomeScreen1CarData.data[index].logo!),
                                  SizedBox(width: 12.w),
                                  Text(HomeScreen1CarData.data[index].title!,
                                      style: TextStyle(
                                        color: Color(0xff414141),
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child: Text(
                                    HomeScreen1CarData.data[index].subtitle!,
                                    style: TextStyle(
                                      color: Color(0xff414141),
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child:
                                    Text(HomeScreen1CarData.data[index].model!,
                                        style: TextStyle(
                                          color: Color(0xff838383),
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w600,
                                        )),
                              )
                            ]),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 74.h,
                        child:
                            Image.asset(HomeScreen1CarData.data[index].image!),
                      ),
                      TabBar(
                        unselectedLabelColor: Color(0xff838383),
                        indicatorColor: Color(0xffF48129),
                        labelColor: Color(0xffF48129),
                        tabs: [
                          Tab(
                            text: 'Current Visit',
                          ),
                          Tab(
                            text: 'Last Visit',
                          )
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                      SizedBox(
                        height: 150.h,
                        width: 287.w,
                        child: TabBarView(
                          children: [
                            CurrentVisit(index: index),
                            LastVisit(index: index),
                          ],
                          controller: _tabController,
                        ),
                      ),
                      CustomButton(
                        tap: () => print('pressed'),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
