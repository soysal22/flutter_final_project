import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class TextSmallGrey extends StatelessWidget {
  const TextSmallGrey({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: DoctorsConst.colorGrey,
            ));
  }
}
