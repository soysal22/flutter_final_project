// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class ElevatedButtonLargeText extends StatelessWidget {
  ElevatedButtonLargeText(
      {super.key, required this.text, required this.onPressed});

  final String text;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        width: mediaWidth,
        height: mediaHeight / 15,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(text,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: DoctorsConst.colorWhite,
                    ))));
  }
}
