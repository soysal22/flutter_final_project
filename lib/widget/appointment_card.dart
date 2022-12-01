import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/widget/text_blue_bold.dart';
import 'package:flutter_final_project/widget/text_small_black.dart';
import 'package:flutter_final_project/widget/text_small_grey.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  final double thickness1 = 1;
  final double elevation5 = 5;
  final double sizedBoxHeight4_5 = 4.5;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mediaWidth,
      height: mediaHeight / sizedBoxHeight4_5,
      child: Card(
        elevation: elevation5,
        color: DoctorsConst.colorWhite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 5),
              child: Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DoctorsConst.appointmentDate,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: DoctorsConst.colorGrey, fontSize: 14)),
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 4,
                          backgroundColor: DoctorsConst.colorGreen,
                        ),
                        DoctorsConst.sizedBoxWidth5,
                        const TextSmallGrey(
                            text: DoctorsConst.appointmentOnline),
                        Icon(
                          Icons.more_vert_rounded,
                          color: DoctorsConst.colorGrey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            _dividerGrey(thickness1),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: DoctorsConst.colorGreen,
                          child: CircleAvatar(
                            maxRadius: 28,
                            backgroundColor: DoctorsConst.colorWhite,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: DoctorsConst.radius40,
                                  bottomRight: DoctorsConst.radius40),
                              child: Image.asset(
                                DoctorsConst.imageAppointment,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        DoctorsConst.sizedBoxWidth20,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextBlueBold(
                                text: DoctorsConst.appointmentDrName),
                            Text(DoctorsConst.appointmentDepartment,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                        color: DoctorsConst.colorGrey,
                                        fontSize: 12)),
                            const TextSmallBlack(
                                text: DoctorsConst.appointmentWorkingName)
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: DoctorsConst.colorBlue,
                          size: 25,
                        ),
                        Text(DoctorsConst.appointmentMap,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: DoctorsConst.colorBlue,
                                    ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            _dividerGrey(thickness1),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: DoctorsConst.colorBlue,
                        ),
                        DoctorsConst.sizedBoxWidth5,
                        Text(DoctorsConst.appointmentJoe,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                    color: DoctorsConst.colorBlack,
                                    fontSize: 12)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            height: mediaHeight / 50,
                            decoration: BoxDecoration(
                                color: DoctorsConst.colorGrey,
                                borderRadius: DoctorsConst.borderRadius20),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(DoctorsConst.appointmentPending,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: DoctorsConst.colorWhite,
                                          fontSize: 10)),
                            )),
                        DoctorsConst.sizedBoxWidth10,
                        Container(
                            height: mediaHeight / 50,
                            decoration: BoxDecoration(
                                color: DoctorsConst.colorRed,
                                borderRadius: DoctorsConst.borderRadius20),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(DoctorsConst.appointmentDelete,
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      ?.copyWith(
                                          color: DoctorsConst.colorWhite,
                                          fontSize: 10)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Divider _dividerGrey(double thickness) {
    return Divider(
      color: DoctorsConst.colorGrey,
      thickness: thickness,
    );
  }
}
