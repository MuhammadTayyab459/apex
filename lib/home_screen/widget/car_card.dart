import 'package:apex/home_screen/widget/current_visit.dart';
import 'package:apex/home_screen/widget/last_visit.dart';
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
    return Card(
      margin: EdgeInsets.only(right: 94.w),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          Column(children: [
            ListTile(
              isThreeLine: true,
              leading: Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              title: Text(
                'Centenario',
                style: TextStyle(
                    color: Color(0xff414141),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                'Lamborghini',
                style: TextStyle(
                    color: Color(0xff414141),
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(children: [
              Spacer(),
              Image(image: AssetImage('assets/images/car2.png'))
            ]),
          ]),
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
                CurrentVisit(),
                LastVisit(),
              ],
              controller: _tabController,
            ),
          ),
          CustomButton(
            tap: () => print('pressed'),
          )
        ],
      ),
    );
  }
}
