// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class ElevatedButtonText extends StatelessWidget {
  ElevatedButtonText({super.key, required this.text, required this.onPressed});

  void Function() onPressed;

  final String text;

  final double sizedBoxWidth2 = 2;
  final double sizedBoxHeight15 = 15;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mediaWidth / sizedBoxWidth2,
      height: mediaHeight / sizedBoxHeight15,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: DoctorsConst.borderRadius40),
              backgroundColor: DoctorsConst.colorDarkBlue),
          onPressed: onPressed,
          child: Center(
            child: Text(text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: DoctorsConst.colorWhite,
                    fontWeight: FontWeight.bold)),
          )),
    );
  }
}
