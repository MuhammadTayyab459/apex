import 'package:apex/home_screen/home_screen.dart';
import 'package:apex/home_screen/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastVisit extends StatelessWidget {
  final int index;
  const LastVisit({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EDDC),
      width: 287.w,
      child: ListView(children: [
        Column(
          children: [
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Arival date',
                trailing: HomeScreen1CarData.data[index].last![0].arrivaldate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Promise date',
                trailing: HomeScreen1CarData.data[index].last![0].promisedate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Delivery date',
                trailing:
                    HomeScreen1CarData.data[index].last![0].deliverydate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Insurance',
                trailing: HomeScreen1CarData.data[index].last![0].Insurance!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Task',
                trailing: HomeScreen1CarData.data[index].last![0].task!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Status',
                trailing: HomeScreen1CarData.data[index].last![0].status!),
          ],
        ),
      ]),
    );
  }
}
