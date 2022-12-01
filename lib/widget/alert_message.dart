import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/widget/text_blue_bold.dart';

class AlertMessage extends StatelessWidget {
  const AlertMessage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                  backgroundColor: DoctorsConst.colorBlue,
                  child: Icon(
                    Icons.close,
                    color: DoctorsConst.colorWhite,
                  ),
                ),
              )
            ],
          ),
          DoctorsConst.sizedBoxHeight10,
          TextBlueBold(text: text),
        ],
      ),
    );
  }
}
