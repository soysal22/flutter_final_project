// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/view/doctor_appointment.dart';
import 'package:flutter_final_project/view/doctor_home.dart';
import 'package:flutter_final_project/widget/elevated_button_large_text.dart';
import 'package:flutter_final_project/widget/text_small_black.dart';
import 'package:flutter_final_project/widget/text_small_bold_black.dart';

class DoctorsDetail extends StatefulWidget {
  DoctorsDetail({super.key, required this.controller});
  PageController controller;
  @override
  State<DoctorsDetail> createState() => _DoctorsDetailState();
}

class _DoctorsDetailState extends State<DoctorsDetail> {
  final double toolbarHeightDetail = 9;

  final double appBarIconSize = 25;
  int? selectedValue = 1;

  final double scale = 0.8;

  final drName = [
    'Dr.Daniel\nMorris',
    'Dr.Sean\nHiggins',
    'Dr.Ruth\nBundy',
    'Dr.Aoife\nByrne',
    'Dr.Frank\nKeane',
    'NurseJulia\nDevlin',
  ];
  final radioButtonTextList = [
    'Check',
    'Centric',
    'Central',
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;

    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: _appBarDesign(mediaHeight, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _paddingTextfield(mediaWidth),
            _paddingRowImage(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 30, right: 30, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _rowTextCircleAvatar(context),
                  DoctorsConst.sizedBoxHeight5,
                  SizedBox(
                    width: mediaWidth,
                    height: mediaHeight / 3.6,
                    child: const Card(
                      elevation: 10,
                    ),
                  ),
                  DoctorsConst.sizedBoxHeight10,
                  const TextSmallBoldBlack(
                      text: DoctorsConst.detailNoAppointments),
                  _rowRadioButtonsAndTexts(),
                  ElevatedButtonLargeText(
                      onPressed: () {},
                      text: DoctorsConst.detailElevatedButtonText),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _rowRadioButtonsAndTexts() {
    return Row(
      children: [
        Transform.scale(
          scale: scale,
          child: Radio(
            value: 1,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
        const TextSmallBlack(text: 'Check'),
        Transform.scale(
          scale: scale,
          child: Radio(
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
        const TextSmallBlack(text: 'Centric'),
        Transform.scale(
          scale: scale,
          child: Radio(
            value: 3,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
        const TextSmallBlack(text: 'Central'),
      ],
    );
  }

  Row _rowTextCircleAvatar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _drNameText(context),
            DoctorsConst.sizedBoxHeight5,
            Text(DoctorsConst.detailMedicine,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: DoctorsConst.colorGrey))
          ],
        ),
        Row(
          children: [
            CircleAvatar(
              maxRadius: 5,
              backgroundColor: DoctorsConst.colorGreen,
            ),
            DoctorsConst.sizedBoxWidth5,
            const TextSmallBlack(text: DoctorsConst.appointmentOnline),
          ],
        )
      ],
    );
  }

  Text _drNameText(BuildContext context) {
    return Text(DoctorsConst.detailDrName,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: DoctorsConst.colorBlue,
            fontWeight: FontWeight.w600,
            fontSize: 19));
  }

  Padding _paddingRowImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < drName.length; i++)
            ColumnContainerAndText(text: drName[i]),
        ],
      ),
    );
  }

  Padding _paddingTextfield(double mediaWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
      child: SizedBox(
        height: mediaWidth / 10,
        child: TextField(
          cursorHeight: 20,
          decoration: InputDecoration(
            floatingLabelAlignment: FloatingLabelAlignment.center,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            alignLabelWithHint: true,
            fillColor: DoctorsConst.colorDetailTextFieldGrey,
            filled: true,
            hintText: DoctorsConst.detailTextField,
            hintStyle: TextStyle(
              color: DoctorsConst.colorGrey,
              fontSize: 18,
            ),
            suffixIcon: Icon(
              Icons.search,
              color: DoctorsConst.colorGrey,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }

  AppBar _appBarDesign(double mediaHeight, context) {
    return AppBar(
      backgroundColor: DoctorsConst.colorBlue,
      toolbarHeight: mediaHeight / toolbarHeightDetail,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _rowIconText(context),
          const RowMaiilAndStackNotificationIconCircleAvatar(),
        ],
      ),
    );
  }

  Row _rowIconText(context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => widget.controller.previousPage(
              duration: const Duration(milliseconds: 1),
              curve: Curves.bounceInOut),
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: appBarIconSize,
            color: DoctorsConst.colorWhite,
          ),
        ),
        DoctorsConst.sizedBoxWidth20,
        const TitleAppBar(text: DoctorsConst.appointments),
      ],
    );
  }
}

class ColumnContainerAndText extends StatelessWidget {
  const ColumnContainerAndText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: DoctorsConst.borderRadius10,
              border: Border.all(color: DoctorsConst.colorGreen, width: 3)),
          child: Image.asset(
            fit: BoxFit.cover,
            DoctorsConst.imageDetail,
            width: mediaWidth / 9,
            height: mediaWidth / 6,
          ),
        ),
        DoctorsConst.sizedBoxHeight5,
        Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: DoctorsConst.colorDarkGrey,
                fontWeight: FontWeight.w600,
                fontSize: 13)),
      ],
    );
  }
}
