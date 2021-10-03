import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class PhoneButton extends StatelessWidget {
  const PhoneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () async {
              await context.setLocale(Locale('en'));
            },
            child: Text('English')),
        Spacer(),
        ElevatedButton(
            onPressed: () async {
              await context.setLocale(Locale('ar'));
            },
            child: Text('العربية')),
        Spacer(),
        FloatingActionButton(
          child: Image.asset('assets/images/phone.png'),
          onPressed: () {},
          backgroundColor: Color(0xffF48129),
        ),
      ],
    );
  }
}
