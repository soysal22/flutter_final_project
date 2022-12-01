import 'package:flutter/material.dart';
import 'package:flutter_final_project/const/doctors_const.dart';
import 'package:flutter_final_project/view/doctor_login.dart';
import 'package:flutter_final_project/widget/alert_messages_elevated_button.dart';
import 'package:flutter_final_project/widget/elevated_button_text.dart';
import 'package:flutter_final_project/widget/text_blue_bold.dart';
import 'package:flutter_final_project/widget/text_large_bold_black.dart';
import 'package:flutter_final_project/widget/text_small_black.dart';
import 'package:flutter_final_project/widget/text_small_grey.dart';
import 'package:flutter_final_project/widget/textfield_custom.dart';

class DoctorsSignUp extends StatefulWidget {
  const DoctorsSignUp({super.key});

  @override
  State<DoctorsSignUp> createState() => _DoctorsSignUpState();
}

TextEditingController _textUserController = TextEditingController();
TextEditingController _textEmailController = TextEditingController();
TextEditingController _textPhoneController = TextEditingController();
TextEditingController _textPasswordController = TextEditingController();
TextEditingController _textConfirmPasswordController = TextEditingController();

double iconSize30 = 30;
double toolbarHeight8 = 8;
String textelevatedButtonCreate = 'Kayıt Başarılı';

String textElevated = 'Login Sayfasına Gitmek İçin Tıklayınz';

class _DoctorsSignUpState extends State<DoctorsSignUp> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;

    final paddingSignUp = mediaWidth / 15;

    return Scaffold(
      backgroundColor: DoctorsConst.colorWhite,
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const TextLargeBoldBlack(text: DoctorsConst.signUpTitle),
                DoctorsConst.sizedBoxHeight10,
                const TextSmallGrey(text: DoctorsConst.signUpContext),
                DoctorsConst.sizedBoxHeight30,
                _paddingColumnTextfieldCustom(paddingSignUp),
                ElevatedButtonText(
                  text: DoctorsConst.signUpElevatedButton,
                  onPressed: () {
                    if (_textUserController.text.isNotEmpty &&
                        _textEmailController.text.isNotEmpty &&
                        _textPhoneController.text.isNotEmpty &&
                        _textPasswordController.text.isNotEmpty ==
                            _textConfirmPasswordController.text.isNotEmpty) {
                      showDialog(
                          context: context,
                          builder: (context) => AlertMessagesElevatedButton(
                                text: textelevatedButtonCreate,
                                textButton: textElevated,
                                onPressed: () => Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const DoctorsLogin(),
                                )),
                              ));
                    }
                  },
                ),
              ],
            ),
            DoctorsConst.sizedBoxHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextSmallBlack(text: DoctorsConst.signUpAlready),
                DoctorsConst.sizedBoxWidth5,
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const DoctorsLogin(),
                      ));
                    },
                    child:
                        const TextBlueBold(text: DoctorsConst.signUpLoginHere))
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _paddingColumnTextfieldCustom(double paddingSignUp) {
    return Padding(
      padding: EdgeInsets.only(left: paddingSignUp, right: paddingSignUp),
      child: Column(
        children: [
          TextfieldCustom(
              labelText: DoctorsConst.signUpUserName,
              icons: Icons.person_outline,
              keyboardType: TextInputType.name,
              textfieldController: _textUserController),
          DoctorsConst.sizedBoxHeight20,
          TextfieldCustom(
              labelText: DoctorsConst.loginEmail,
              icons: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              textfieldController: _textEmailController),
          DoctorsConst.sizedBoxHeight20,
          TextfieldCustom(
              labelText: DoctorsConst.signUpPhone,
              icons: Icons.phone_android,
              keyboardType: TextInputType.number,
              textfieldController: _textPhoneController),
          DoctorsConst.sizedBoxHeight20,
          TextfieldCustom(
              labelText: DoctorsConst.loginPassword,
              icons: Icons.lock_open_rounded,
              keyboardType: TextInputType.text,
              textfieldController: _textPasswordController),
          DoctorsConst.sizedBoxHeight20,
          TextfieldCustom(
              labelText: DoctorsConst.signUpConfirmPassword,
              icons: Icons.lock_open_rounded,
              keyboardType: TextInputType.text,
              textfieldController: _textConfirmPasswordController),
          DoctorsConst.sizedBoxHeight30,
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: DoctorsConst.colorWhite,
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height / toolbarHeight8,
      title: GestureDetector(
        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const DoctorsLogin(),
        )),
        child: Icon(
          Icons.arrow_back,
          color: DoctorsConst.colorBlack,
          size: iconSize30,
        ),
      ),
    );
  }
}
