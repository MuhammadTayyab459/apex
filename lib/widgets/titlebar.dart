import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 22.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {},
              child: Image(image: AssetImage('assets/images/leading.png'))),
          GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                maxRadius: 30,
                backgroundImage: AssetImage('assets/images/pic.png'),
              ))
        ]));
  }
}
