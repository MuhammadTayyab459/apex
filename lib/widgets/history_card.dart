import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: (Column(
        children: [
          ListTile(
              title: Text('Lamborghini',
                  style: TextStyle(
                      color: Color(0xff414141),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600)),
              subtitle: Text(
                'Centenario',
                style: TextStyle(
                    color: Color(0xff838383),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400),
              )),
          SizedBox(height: 16.h),
          Container(
            color: Color(0xffF8EDDC),
            width: 347.w,
            child: Column(
              children: [
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Arrival date',
                  subtitle: '12 Sept 2021',
                  color: Color(0xffF48129),
                ),
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Promise date',
                  subtitle: '15 Sept 2021',
                  color: Color(0xffF48129),
                ),
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Delivery date',
                  subtitle: '15 Sept 2021',
                  color: Color(0xffF48129),
                ),
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Task',
                  subtitle: 'Repair',
                  color: Color(0xffF48129),
                ),
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Status',
                  subtitle: 'Repaired',
                  color: Color(0xff0B6D09),
                ),
                CardTiles(
                  icon: Icons.monetization_on_outlined,
                  title: 'Cost',
                  subtitle: '200 Aed',
                  color: Color(0xffF48129),
                ),
                SizedBox(
                  height: 21.h,
                ),
              ],
            ),
          ),
          CustomButton(
            tap: () => print('pressed'),
          )
        ],
      )),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback tap;
  const CustomButton({
    required this.tap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GestureDetector(
          onTap: tap,
          child: Container(
            child: Icon(
              Icons.arrow_forward_outlined,
              color: Color(0xffFFFFFF),
            ),
            height: 36.h,
            width: 94.h,
            decoration: BoxDecoration(
                color: Color(0xffF48129),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0))),
          ),
        ),
      ],
    );
  }
}

class CardTiles extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const CardTiles({
    required this.color,
    required this.icon,
    required this.subtitle,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: ListTile(
        minLeadingWidth: 12.85.w,
        leading: Icon(icon, color: Color(0xffF48129)),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000)),
        ),
        trailing: Text(subtitle,
            style: TextStyle(
                fontSize: 17.sp, fontWeight: FontWeight.w600, color: color)),
      ),
    );
  }
}
