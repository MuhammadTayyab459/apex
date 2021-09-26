import 'package:apex/home_screen/constants.dart';
import 'package:apex/home_screen/widget/banner_section.dart';
import 'package:apex/home_screen/widget/car_card.dart';
import 'package:apex/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 33.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 22.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Image(
                                  image:
                                      AssetImage('assets/images/leading.png'))),
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
                CarCard(tabController: _tabController),
                SizedBox(height: 27.h),
                BannerSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VisitTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String trailing;
  final Color color;
  const VisitTile(
      {required this.icon,
      required this.title,
      required this.trailing,
      required this.color,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27.h,
      child: ListTile(
        leading: Icon(icon, color: Color(0xffF48129)),
        minLeadingWidth: 12.h,
        title: Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        ),
        trailing: Text(trailing,
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w600, color: color)),
      ),
    );
  }
}
