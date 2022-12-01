import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class TextLargeBoldBlack extends StatelessWidget {
  const TextLargeBoldBlack({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: DoctorsConst.colorBlack, fontWeight: FontWeight.bold));
  }
}
