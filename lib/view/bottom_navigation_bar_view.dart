import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

import 'package:flutter_final_project/view/doctor_home.dart';
import 'package:flutter_final_project/view/doctorappo_doctordetail.dart';
import 'package:flutter_final_project/view/page_design.dart';

class BottomNavigationBarview extends StatefulWidget {
  const BottomNavigationBarview({super.key});

  @override
  State<BottomNavigationBarview> createState() =>
      _BottomNavigationBarviewState();
}

int selectedIndex = 0;
double iconSize30 = 30;
double elevation10 = 10;

List<Widget> pageList = const [
  DoctorsHome(),
  DoctorAppointmentAndDoctorDetailPage(),
  PageDesign(),
  PageDesign(),
  PageDesign(),
];

class _BottomNavigationBarviewState extends State<BottomNavigationBarview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: DoctorsConst.colorWhite,
          elevation: elevation10,
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          iconSize: iconSize30,
          selectedItemColor: DoctorsConst.colorBlue,
          unselectedItemColor: DoctorsConst.colorGrey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: DoctorsConst.home),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: DoctorsConst.appointments),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: DoctorsConst.messages),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_sharp),
                label: DoctorsConst.community),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: DoctorsConst.profile),
          ]),
      body: pageList.elementAt(selectedIndex),
    );
  }
}
