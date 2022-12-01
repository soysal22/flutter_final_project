// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/view/doctor_home.dart';
import 'package:flutter_final_project/widget/appointment_card.dart';
import 'package:flutter_final_project/widget/elevated_button_large_text.dart';

class DoctorsAppointment extends StatefulWidget {
  DoctorsAppointment({super.key, required this.controller});
  PageController controller;

  @override
  State<DoctorsAppointment> createState() => _DoctorsAppointmentState();
}

class _DoctorsAppointmentState extends State<DoctorsAppointment> {
  final double toolbarHeight8 = 9;

  final double appBarIconSize25 = 25;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    final double top = mediaWidth / 30;

    final double left = mediaWidth / 18;
    return Scaffold(
      appBar: _appBarDesign(mediaHeight),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: top, left: left, right: left, bottom: left),
            child: Column(
              children: [
                for (int i = 0; i < 3; i++) const AppointmentCard(),
                DoctorsConst.sizedBoxHeight5,
                ElevatedButtonLargeText(
                    text: DoctorsConst.appointmentNew,
                    onPressed: () => widget.controller.nextPage(
                        duration: const Duration(milliseconds: 1),
                        curve: Curves.bounceOut)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBarDesign(double mediaHeight) {
    return AppBar(
      backgroundColor: DoctorsConst.colorBlue,
      toolbarHeight: mediaHeight / toolbarHeight8,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_outlined,
                size: appBarIconSize25,
                color: DoctorsConst.colorWhite,
              ),
              DoctorsConst.sizedBoxWidth20,
              const TitleAppBar(text: DoctorsConst.appointmentAppBar),
            ],
          ),
          const RowMaiilAndStackNotificationIconCircleAvatar(),
        ],
      ),
    );
  }
}

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: DoctorsConst.colorWhite,
            ));
  }
}
