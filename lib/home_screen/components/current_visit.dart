import 'package:apex/home_screen/home_screen.dart';
import 'package:apex/home_screen/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentVisit extends StatelessWidget {
  final int index;
  const CurrentVisit({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EDDC),
      width: 287.w,
      child: SingleChildScrollView(
        child: Column(
          children: [
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Arival date',
                trailing:
                    HomeScreen1CarData.data[index].current![0].arrivaldate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Promise date',
                trailing:
                    HomeScreen1CarData.data[index].current![0].promisedate!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Insurance',
                trailing:
                    HomeScreen1CarData.data[index].current![0].Insurance!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Task',
                trailing: HomeScreen1CarData.data[index].current![0].task!),
            VisitTile(
                icon: Icons.monetization_on_outlined,
                title: 'Status',
                trailing: HomeScreen1CarData.data[index].current![0].status!),
          ],
        ),
      ),
    );
  }
}
