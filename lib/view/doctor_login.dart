import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/view/bottom_navigation_bar_view.dart';
import 'package:flutter_final_project/view/doctor_signup.dart';
import 'package:flutter_final_project/widget/alert_messages_design.dart';
import 'package:flutter_final_project/widget/alert_messages_elevated_button.dart';
import 'package:flutter_final_project/widget/elevated_button_text.dart';
import 'package:flutter_final_project/widget/text_blue_bold.dart';
import 'package:flutter_final_project/widget/text_small_black.dart';
import 'package:flutter_final_project/widget/text_small_grey.dart';
import 'package:flutter_final_project/widget/textfield_custom.dart';

class DoctorsLogin extends StatefulWidget {
  const DoctorsLogin({super.key});

  @override
  State<DoctorsLogin> createState() => _DoctorsLoginState();
}

class _DoctorsLoginState extends State<DoctorsLogin> {
  final TextEditingController _textEmailController = TextEditingController();
  final TextEditingController _textPassowordController =
      TextEditingController();

  final double widthImage = 1.8;
  final double fontSize14 = 14;
  final double fontSize28 = 28;
  final double containerHeight13 = 13;
  final double googleImageWidth = 25;
  final double googleImageHeight = 28;
  final double facebookImageWidth = 14;
  final double facebookImageHeight = 30;

  final String email = 'isoysal12@gmail.com';
  final String passoword = 'alibaba123';

  final String textelevatedButtonLogin = 'Giriş Başarılı';
  final String textalertMessagesLoginButton =
      'Ana Sayfaya Gitmek İçin Tıklayın';

  final String emailMistake =
      'Girdiğiniz Email veya Password Yanlış Lütfen! Tekrar Deneyiniz';
  final String emailEmpty = ' Email veya Password Girmeyi Unuttunuz !';
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    EdgeInsets paddingLogin = EdgeInsets.only(
        top: mediaHeight / 15,
        // bottom: mediaHeight / 15,
        left: mediaWidth / 20,
        right: mediaWidth / 20);

    return Scaffold(
      extendBody: true,
      backgroundColor: DoctorsConst.colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingLogin,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  _centerImageAsset(mediaWidth),
                  _textTitle(context),
                  DoctorsConst.sizedBoxHeight10,
                  const TextSmallGrey(text: DoctorsConst.loginContext),
                ],
              ),
              DoctorsConst.sizedBoxHeight30,
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextfieldCustom(
                        labelText: email,
                        icons: Icons.person,
                        keyboardType: TextInputType.emailAddress,
                        textfieldController: _textEmailController),
                    DoctorsConst.sizedBoxHeight20,
                    TextfieldCustom(
                        labelText: DoctorsConst.loginPassword,
                        icons: Icons.lock_open,
                        keyboardType: TextInputType.text,
                        textfieldController: _textPassowordController),
                    DoctorsConst.sizedBoxHeight10,
                    _rowTextForgotPassword(context),
                    DoctorsConst.sizedBoxHeight10,
                    ElevatedButtonText(
                      text: DoctorsConst.infoLogin,
                      onPressed: () {
                        if (_textEmailController.text == email &&
                            _textPassowordController.text == passoword) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertMessagesElevatedButton(
                                    text: textelevatedButtonLogin,
                                    textButton: textalertMessagesLoginButton,
                                    onPressed: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavigationBarview(),
                                    )),
                                  ));
                        } /*else if (_textEmailController.text != email ||
                            _textPassowordController.text == passoword) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertMessage(
                                    text: emailMistake,
                                  ));
                        } else if (_textEmailController.text == '' ||
                            _textPassowordController.text == '') {
                          showDialog(
                              context: context,
                              builder: (context) => AlertMessage(
                                    text: emailEmpty,
                                  ));
                        } */
                      },
                    ),
                    DoctorsConst.sizedBoxHeight10,
                    const TextSmallGrey(text: DoctorsConst.loginConnect),
                    DoctorsConst.sizedBoxHeight10,
                    _rowElevatedButtons(mediaWidth, mediaHeight),
                    DoctorsConst.sizedBoxHeight10,
                    _rowTextsDontHaveAndSignup(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _rowElevatedButtons(double mediaWidth, double mediaHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _elevatedButtonFacebook(mediaWidth, mediaHeight),
        DoctorsConst.sizedBoxWidth20,
        _elevatedButtonGoogle(mediaWidth, mediaHeight),
      ],
    );
  }

  ElevatedButton _elevatedButtonFacebook(
      double mediaWidth, double mediaHeight) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: DoctorsConst.colorDarkBlue,
            shape: RoundedRectangleBorder(
                borderRadius: DoctorsConst.borderRadius10),
            padding: DoctorsConst.paddingElevatedButtonFacebook),
        onPressed: () {
          _showDialogAlertMessages(context);
        },
        icon: _imageAssetFacebook(mediaWidth, mediaHeight),
        label: const TextElevatedButton(text: DoctorsConst.loginFacebook));
  }

  Image _imageAssetFacebook(double mediaWidth, double mediaHeight) {
    return Image.asset(
      DoctorsConst.imageLoginFacebook,
      fit: BoxFit.contain,
      width: mediaWidth / facebookImageWidth,
      height: mediaHeight / facebookImageHeight,
    );
  }

  ElevatedButton _elevatedButtonGoogle(double mediaWidth, double mediaHeight) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: DoctorsConst.colorRed,
            shape: RoundedRectangleBorder(
                borderRadius: DoctorsConst.borderRadius10),
            padding: DoctorsConst.paddingElevatedButtonGoole),
        onPressed: () {
          _showDialogAlertMessages(context);
        },
        icon: _imageAssetGoogle(mediaWidth, mediaHeight),
        label: const TextElevatedButton(text: DoctorsConst.loginGoogle));
  }

  Image _imageAssetGoogle(double mediaWidth, double mediaHeight) {
    return Image.asset(
      DoctorsConst.imageLoginGoogle,
      fit: BoxFit.contain,
      width: mediaWidth / googleImageWidth,
      height: mediaHeight / googleImageHeight,
    );
  }

  Row _rowTextsDontHaveAndSignup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextSmallBlack(text: DoctorsConst.loginDontHave),
        DoctorsConst.sizedBoxWidth5,
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const DoctorsSignUp(),
              ));
            },
            child: const TextBlueBold(text: DoctorsConst.loginSignUp))
      ],
    );
  }

  Row _rowTextForgotPassword(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              _showDialogAlertMessages(context);
            },
            child: Text(DoctorsConst.loginForgotPassword,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: DoctorsConst.colorBlack, fontSize: fontSize14)))
      ],
    );
  }

  Future<dynamic> _showDialogAlertMessages(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) =>
            const AlertMessagesDesign(text: DoctorsConst.textPageDesing));
  }

  Text _textTitle(BuildContext context) {
    return Text(DoctorsConst.loginTitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: DoctorsConst.colorBlack,
            fontWeight: FontWeight.w900,
            fontSize: fontSize28));
  }

  Center _centerImageAsset(double mediaWidth) {
    return Center(
        child: Image.asset(
      DoctorsConst.imageLogin,
      fit: BoxFit.cover,
      width: mediaWidth / widthImage,
    ));
  }
}

class TextElevatedButton extends StatelessWidget {
  const TextElevatedButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: DoctorsConst.colorWhite, fontWeight: FontWeight.w600));
  }
}
