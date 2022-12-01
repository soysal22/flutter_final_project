import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/view/doctor_login.dart';
import 'package:flutter_final_project/widget/text_large_bold_black.dart';
import 'package:flutter_final_project/widget/text_small_bold_grey.dart';

class DoctorsInfo extends StatefulWidget {
  const DoctorsInfo({super.key});

  @override
  State<DoctorsInfo> createState() => _DoctorsInfoState();
}

class _DoctorsInfoState extends State<DoctorsInfo> {
  final controller = PageController();

  int? selctedPage = 0;
  final double containerHeight3 = 3;

  int flex5 = 5;
  final double top12 = 12;
  final double top50 = 50;
  final double right15 = 15;
  final double left10 = 10;

  List imageList = [
    DoctorsConst.infoImageOne,
    DoctorsConst.infoImageTwo,
    DoctorsConst.infoImageThere,
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        selctedPage = controller.page?.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      backgroundColor: DoctorsConst.colorBackground,
      body: PageView.builder(
        controller: controller,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              top: mediaHeight / top12,
            ),
            child: Column(
              children: [
                Expanded(
                  flex: flex5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: mediaWidth / right15),
                        child: _rowTextButtonSkip(context),
                      ),
                      _containerAssetImage(context, index),
                    ],
                  ),
                ),
                Expanded(
                  flex: flex5,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: mediaHeight / top50,
                        bottom: mediaHeight / right15,
                        left: mediaWidth / left10,
                        right: mediaWidth / left10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            TextLargeBoldBlack(text: DoctorsConst.infoTitle),
                            DoctorsConst.sizedBoxHeight10,
                            TextSmallBoldGrey(text: DoctorsConst.infoContext),
                          ],
                        ),
                        _rowPageNumberAndTextButtonNext(context),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Row _rowPageNumberAndTextButtonNext(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _textPageNumber(context),
        _textButtonNextLogin(context),
      ],
    );
  }

  Text _textPageNumber(BuildContext context) {
    return Text(
      '${selctedPage! + 1}/${imageList.length}',
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
          color: DoctorsConst.colorBlack, fontWeight: FontWeight.bold),
    );
  }

  TextButton _textButtonNextLogin(BuildContext context) {
    return TextButton(
      onPressed: selctedPage == 2
          ? () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const DoctorsLogin(),
              ));
            }
          : () => controller.nextPage(
              duration: const Duration(milliseconds: 1),
              curve: Curves.bounceInOut),
      child: Text(
        selctedPage == 2 ? DoctorsConst.infoLogin : DoctorsConst.infoNext,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: selctedPage == 2
                ? DoctorsConst.colorBlue
                : DoctorsConst.colorBlack,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Container _containerAssetImage(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / containerHeight3,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain, image: AssetImage(imageList[index]))),
    );
  }

  Row _rowTextButtonSkip(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [textButtonSkip(context)],
    );
  }

  TextButton textButtonSkip(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const DoctorsLogin(),
          ));
        },
        child: Text(DoctorsConst.infoSkip,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: DoctorsConst.colorBlue, fontWeight: FontWeight.bold)));
  }
}
