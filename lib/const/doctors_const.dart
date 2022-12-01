import 'package:flutter/material.dart';

class DoctorsConst {
// IMAGE

  // Info image
  static String infoImageOne = 'assets/images/info/infoOne.webp';
  static String infoImageTwo = 'assets/images/info/infoTwo.webp';
  static String infoImageThere = 'assets/images/info/infoThere.webp';

// image Login
  static String imageLogin = 'assets/images/login/login.png';
  static String imageLoginFacebook = 'assets/images/login/facebook.png';
  static String imageLoginGoogle = 'assets/images/login/google.png';

  // image Home
  static String imageHomeCardTrigon = 'assets/images/home/trigon.png';

  static String imageHomeCoronavirus = 'assets/images/home/coronavirus.jpg';
  static String imageHomeCoronavirusUpdate =
      'assets/images/home/coronaUpdate.png';

  // image Appointmnet
  static String imageAppointment = 'assets/images/appointment/doctorMan.png';

  // image detail
  static String imageDetail = 'assets/images/detail/doctorWomen.png';

//      Texts

  static const String stop = 'sayfada hata var';
  static const String textPageDesing = 'Page Design in Progress';

  // Text BottomBar
  static const String home = 'Home';
  static const String appointments = 'Appointments';
  static const String messages = 'Messages';
  static const String community = 'Community';
  static const String profile = 'Profile';

  // Text Info
  static const String infoTitle = 'Find your best \nDoctors';
  static const String infoContext = 'Book appointment with doctors near you ';
  static const String infoNext = 'NEXT';
  static const String infoSkip = 'SKIP';
  static const String infoLogin = 'LOG IN';

  //  Text Login
  static const String loginTitle = 'Welcome back!';
  static const String loginContext =
      'Log in to your existant account of Q Allure';
  static const String loginEmail = 'E mail';
  static const String loginPassword = 'Passoword';
  static const String loginForgotPassword = 'Forgot Password?';
  static const String loginConnect = 'Or connect using';
  static const String loginFacebook = 'Facebook';
  static const String loginGoogle = 'Google';
  static const String loginDontHave = 'Don\'t have an acoount?';
  static const String loginSignUp = 'Sign Up';

  //  Text Sign Up
  static const String signUpTitle = 'Let\'s Get Started!';
  static const String signUpContext =
      'Create an account Q Allure to get all features';
  static const String signUpUserName = 'Jhone Williams';
  static const String signUpPhone = 'Phone';
  static const String signUpConfirmPassword = 'Confirm Password';
  static const String signUpElevatedButton = 'CREATE';
  static const String signUpAlready = 'Already have an account?';
  static const String signUpLoginHere = 'Login here';

  // Text Home
  static const String homeHello = 'Hello,';
  static const String homeTextFieldAppointment = 'Appointment Due in 7 mins';
  static const String homeTextFieldEnter = 'Enter the Waiting Room';
  static const String homeBookAppointment = 'Book an Appointment';
  static const String homeWithNurse = 'With a GP or Nurse';
  static const String homeRequest = 'Request a Prescription';
  static const String homeWeAim = 'We aim for same day service';
  static const String homeAdministration = 'Administration Requests';
  static const String homeRequests =
      'Requestes for sick notes, driving license forms,general ';
  static const String homeMesssages = 'Messages & Notifications';
  static const String homeHow = 'How we contact you';
  static const String homeDiscover = 'Discover';
  static const String homeCorona = 'Coronavirus - World Health Organization';
  static const String homeCoronaUpdate =
      'Coronavirus Update (Live):\n1,425,468 Cases and ...';

  // Text Appointment
  static const String appointmentAppBar = 'Appointment List';
  static const String appointmentDate = 'Sat, 4 April 2020 | 3.15 PM';
  static const String appointmentOnline = 'Online';
  static const String appointmentDrName = 'Dr.Daniel Morris';
  static const String appointmentDepartment = 'Ophthamology';
  static const String appointmentWorkingName = 'Churtown Medical';
  static const String appointmentMap = 'Map';
  static const String appointmentJoe = 'Mr.Joe Bloggs | Age: 31Y';
  static const String appointmentPending = 'Pending';
  static const String appointmentDelete = 'Delete';
  static const String appointmentNew = 'New Appointment';
  static const String appointmentComplete = 'complete';
  static const String appointmentRejected = 'Rejected';
  static const String appointmentOnsite = 'Onsite';

  // Text Detail

  static const String detailTextField = 'Churctown Medical Center';
  static const String detailDrName = 'Dr.Aoife Byrne';
  static const String detailMedicine = 'Medicine';
  static const String detailCalender = 'APRIL';
  static const String detailAvailableTimes = 'Available Times';
  static const String detailNoAppointments =
      'No Appointments slots available ?';
  static const String detailElevatedButtonText = 'Book Appointment';

  // Paddging

  static const paddingAll20 = EdgeInsets.all(20);
  static const paddingHome =
      EdgeInsets.only(top: 60, right: 25, left: 25, bottom: 15);
  static const EdgeInsets paddingElevatedButtonGoole =
      EdgeInsets.only(left: 30, right: 35, top: 14, bottom: 14);
  static const EdgeInsets paddingElevatedButtonFacebook =
      EdgeInsets.only(left: 15, right: 25, top: 15, bottom: 15);

// Circular

  static const Radius radius10 = Radius.circular(10);
  static const Radius radius20 = Radius.circular(20);
  static const Radius radius30 = Radius.circular(30);
  static const Radius radius40 = Radius.circular(40);

  static BorderRadius borderRadius10 = BorderRadius.circular(10);
  static BorderRadius borderRadius20 = BorderRadius.circular(20);
  static BorderRadius borderRadius40 = BorderRadius.circular(40);

// Color

  static Color colorWhite = Colors.white;
  static Color colorBackground = const Color.fromARGB(255, 255, 255, 255);
  static Color colorYellow = Colors.yellow;
  static Color colorGrey = Colors.grey;
  static Color? colorDarkGrey = Colors.grey[700];
  static Color colorDetailTextFieldGrey =
      const Color.fromRGBO(236, 223, 223, 0.719);
  static Color colorBlack = Colors.black;
  static Color colorRed = Colors.red;
  static Color colorGreen = Colors.green;
  static Color colorBlue = Colors.blue;
  static Color colorDarkBlue = const Color.fromARGB(255, 4, 95, 170);
  static Color colorTrasparent = const Color.fromARGB(0, 58, 56, 56);

  // SizedBox

  // Width

  static const SizedBox sizedBoxWidth5 = SizedBox(width: 5);
  static const SizedBox sizedBoxWidth10 = SizedBox(width: 10);
  static const SizedBox sizedBoxWidth15 = SizedBox(width: 15);
  static const SizedBox sizedBoxWidth20 = SizedBox(width: 20);

  // Height
  static const SizedBox sizedBoxHeight5 = SizedBox(height: 5);
  static const SizedBox sizedBoxHeight10 = SizedBox(height: 10);
  static const SizedBox sizedBoxHeight15 = SizedBox(height: 15);
  static const SizedBox sizedBoxHeight20 = SizedBox(height: 20);
  static const SizedBox sizedBoxHeight30 = SizedBox(height: 30);
}
