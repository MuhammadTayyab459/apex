import 'package:apex/home_screen/model/model.dart';
import 'package:apex/home_screen_2/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: ListView.builder(
        itemCount: HomeScreen1CarData.data.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: (Column(
              children: [
                Center(
                  child: ListTile(
                      title: Text(CarData.data[index].title,
                          style: TextStyle(
                              color: Color(0xff414141),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600)),
                      subtitle: Text(
                        CarData.data[index].subtitle,
                        style: TextStyle(
                            color: Color(0xff838383),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                Container(
                  color: Color(0xffF8EDDC),
                  width: 347.w,
                  child: Column(
                    children: [
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Arrival date',
                        subtitle: HomeScreen1CarData
                            .data[index].last![0].arrivaldate!,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Promise date',
                        subtitle: HomeScreen1CarData
                            .data[index].last![0].promisedate!,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Delivery date',
                        subtitle: HomeScreen1CarData
                            .data[index].last![0].deliverydate!,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Insurance',
                        subtitle:
                            HomeScreen1CarData.data[index].last![0].Insurance!,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Task',
                        subtitle: HomeScreen1CarData.data[index].last![0].task!,
                        color: Color(0xffF48129),
                      ),
                      CardTiles(
                        icon: Icons.monetization_on_outlined,
                        title: 'Status',
                        subtitle:
                            HomeScreen1CarData.data[index].last![0].status!,
                        color: Color(0xffF48129),
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    CustomButton(
                      tap: () => print('pressed'),
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
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
    return GestureDetector(
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
