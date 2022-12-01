import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';

class PageDesign extends StatelessWidget {
  const PageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(DoctorsConst.textPageDesing,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: DoctorsConst.colorBlue,
                    )),
            DoctorsConst.sizedBoxHeight30,
            CircularProgressIndicator.adaptive(
              backgroundColor: DoctorsConst.colorRed,
            ),
            DoctorsConst.sizedBoxHeight30,
            Text(
                "this app designer : İbrahim halil Soysal \n \nemail:isoysal12@gmail.com",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: DoctorsConst.colorBlue,
                    ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
