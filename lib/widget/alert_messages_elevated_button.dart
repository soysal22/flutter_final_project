// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_final_project/widget/text_blue_bold.dart';

class AlertMessagesElevatedButton extends StatelessWidget {
  AlertMessagesElevatedButton(
      {super.key,
      required this.text,
      required this.textButton,
      required this.onPressed});

  final String text;
  final String textButton;

  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: TextBlueBold(text: text)),
      actions: [
        Center(
            child:
                ElevatedButton(onPressed: onPressed, child: Text(textButton))),
      ],
    );
  }
}
