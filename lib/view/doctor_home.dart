import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class DoctorsHome extends StatefulWidget {
  const DoctorsHome({super.key});

  @override
  State<DoctorsHome> createState() => _DoctorsHomeState();
}

double iconSize25 = 25;
double maxRadius6 = 6;
double positionedRight3 = 3;
double fontSize12 = 12;
double fontSize16 = 16;
double fontSize22 = 22;
double containerHeight3_5 = 3.7;

class _DoctorsHomeState extends State<DoctorsHome> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final double left = mediaWidth / 16;
    return Scaffold(
      body: Column(
        children: [
          _containerAppBarTextField(context),
          Padding(
            padding: EdgeInsets.only(top: left, left: left, right: left),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PaddingRowCard(
                  icons: Icons.calendar_month_outlined,
                  title: DoctorsConst.homeBookAppointment,
                  contextt: DoctorsConst.homeWithNurse,
                  iconsTwo: Icons.content_paste_go_rounded,
                  titleTwo: DoctorsConst.homeRequest,
                  contextTwo: DoctorsConst.homeWeAim,
                ),
                DoctorsConst.sizedBoxHeight10,
                const PaddingRowCard(
                  icons: Icons.settings_applications_outlined,
                  title: DoctorsConst.homeAdministration,
                  contextt: DoctorsConst.homeRequests,
                  iconsTwo: Icons.edit_notifications_outlined,
                  titleTwo: DoctorsConst.homeMesssages,
                  contextTwo: DoctorsConst.homeHow,
                ),
                DoctorsConst.sizedBoxHeight15,
                _textDiscover(context),
                DoctorsConst.sizedBoxHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CoronaCard(
                      image: DoctorsConst.imageHomeCoronavirus,
                      title: DoctorsConst.homeCorona,
                    ),
                    CoronaCard(
                      image: DoctorsConst.imageHomeCoronavirusUpdate,
                      title: DoctorsConst.homeCoronaUpdate,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text _textDiscover(BuildContext context) {
    return Text(DoctorsConst.homeDiscover,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: DoctorsConst.colorBlack,
            fontSize: fontSize22,
            fontWeight: FontWeight.bold));
  }

  Container _containerAppBarTextField(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final double left = mediaWidth / 20;
    final double top = mediaHeight / 15;
    final double bottom = mediaHeight / 50;

    return Container(
      width: mediaWidth,
      height: mediaHeight / containerHeight3_5,
      color: DoctorsConst.colorBlue,
      child: Padding(
        padding:
            EdgeInsets.only(left: left, right: left, top: top, bottom: bottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DoctorsConst.homeHello,
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: DoctorsConst.colorWhite,
                            )),
                    Text('Sean!',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: DoctorsConst.colorWhite,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const RowMaiilAndStackNotificationIconCircleAvatar(),
              ],
            ),
            Card(
              color: DoctorsConst.colorWhite,
              child: ListTile(
                title: _textAppointmentListTile(context),
                subtitle: _textEnterListTile(context),
                trailing: _elevatedButtonIcon(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Text _textAppointmentListTile(BuildContext context) {
    return Text(DoctorsConst.homeTextFieldAppointment,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: DoctorsConst.colorGrey, fontSize: fontSize12));
  }

  Text _textEnterListTile(BuildContext context) {
    return Text(DoctorsConst.homeTextFieldEnter,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: DoctorsConst.colorBlack,
            fontWeight: FontWeight.bold,
            fontSize: fontSize16));
  }

  ElevatedButton _elevatedButtonIcon() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(padding: DoctorsConst.paddingAll20),
        onPressed: () {},
        child: Icon(
          Icons.arrow_forward,
          color: DoctorsConst.colorWhite,
        ));
  }
}

class CoronaCard extends StatelessWidget {
  const CoronaCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  final double fontSize10 = 10;
  final double imageHeight10 = 10;

  final double sizedBoxWidth2_3 = 2.3;
  final double sizedBoxHeight5 = 5;
  final double elevation5 = 5;
  final double width30 = 30;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mediaWidth / sizedBoxWidth2_3,
      height: mediaHeight / sizedBoxHeight5,
      child: Card(
        elevation: elevation5,
        shape:
            RoundedRectangleBorder(borderRadius: DoctorsConst.borderRadius10),
        color: DoctorsConst.colorWhite,
        child: ListTile(
          title: Padding(
            padding: EdgeInsets.only(
                top: mediaWidth / width30, bottom: mediaWidth / width30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _cliprrectImage(mediaWidth, mediaHeight),
                _textCorona(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _textCorona(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: DoctorsConst.colorBlack,
            fontWeight: FontWeight.w900,
            fontSize: fontSize10));
  }

  ClipRRect _cliprrectImage(double mediaWidth, double mediaHeight) {
    return ClipRRect(
        borderRadius: DoctorsConst.borderRadius10,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: mediaWidth,
          height: mediaHeight / imageHeight10,
        ));
  }
}

class PaddingRowCard extends StatelessWidget {
  const PaddingRowCard({
    Key? key,
    required this.title,
    required this.contextt,
    required this.icons,
    required this.titleTwo,
    required this.contextTwo,
    required this.iconsTwo,
  }) : super(key: key);

  final String title;
  final String contextt;
  final IconData icons;

  final String titleTwo;
  final String contextTwo;
  final IconData iconsTwo;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxCard(icons: icons, title: title, contextt: contextt),
        DoctorsConst.sizedBoxWidth15,
        SizedBoxCard(icons: iconsTwo, title: titleTwo, contextt: contextTwo),
      ],
    );
  }
}

class SizedBoxCard extends StatelessWidget {
  const SizedBoxCard({
    Key? key,
    required this.icons,
    required this.title,
    required this.contextt,
  }) : super(key: key);

  final IconData icons;
  final String title;
  final String contextt;

  final double sizedBoxWidth2_4 = 2.4;
  final double sizedBoxHeight6_5 = 6.3;
  final double elevation5 = 5;
  final double widtdh15 = 15;
  final double top20 = 20;
  final double left30 = 30;
  final double bottom60 = 60;

  final double iconSize25 = 25;
  final double thickness200 = 200;

  final double fontSize10 = 10;
  final double fontSize12 = 12;
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        width: mediaWidth / sizedBoxWidth2_4,
        height: mediaHeight / sizedBoxHeight6_5,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: DoctorsConst.borderRadius10),
          color: DoctorsConst.colorWhite,
          elevation: elevation5,
          child: Padding(
            padding: EdgeInsets.only(
                top: mediaWidth / top20,
                left: mediaWidth / left30,
                bottom: mediaWidth / bottom60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _paddingIcon(mediaWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _textTitle(context),
                    DoctorsConst.sizedBoxHeight5,
                    _textContext(context),
                    DoctorsConst.sizedBoxHeight5,
                    _sizedBoxDivider(mediaWidth),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Text _textTitle(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: DoctorsConst.colorBlack,
            fontWeight: FontWeight.bold,
            fontSize: fontSize12));
  }

  Text _textContext(BuildContext context) {
    return Text(contextt,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: DoctorsConst.colorGrey,
            fontWeight: FontWeight.bold,
            fontSize: fontSize10));
  }

  SizedBox _sizedBoxDivider(double mediaWidth) {
    return SizedBox(
      width: mediaWidth / widtdh15,
      child: Divider(
        thickness: mediaWidth / thickness200,
        color: DoctorsConst.colorBlue,
      ),
    );
  }

  Padding _paddingIcon(double mediaWidth) {
    return Padding(
      padding: EdgeInsets.only(left: mediaWidth / left30),
      child: Icon(
        icons,
        color: DoctorsConst.colorBlue,
        size: iconSize25,
      ),
    );
  }
}

class RowMaiilAndStackNotificationIconCircleAvatar extends StatelessWidget {
  const RowMaiilAndStackNotificationIconCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _iconMail(),
        DoctorsConst.sizedBoxWidth20,
        _stackNotificationCircleAvatar(),
      ],
    );
  }

  Stack _stackNotificationCircleAvatar() {
    return Stack(
      children: [
        Icon(
          Icons.notifications_none_outlined,
          color: DoctorsConst.colorWhite,
          size: iconSize25,
        ),
        Positioned(
            right: positionedRight3,
            child: CircleAvatar(
              maxRadius: maxRadius6,
              backgroundColor: DoctorsConst.colorRed,
            ))
      ],
    );
  }

  Icon _iconMail() {
    return Icon(
      Icons.mail_outlined,
      color: DoctorsConst.colorWhite,
      size: iconSize25,
    );
  }
}
