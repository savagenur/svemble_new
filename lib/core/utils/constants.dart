import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/size_config.dart';

const kPrimaryColor = Colors.black;
const kPrimaryRedColor = Colors.red;
const kPrimaryLightColor = Colors.black54;
const kPrimaryGradientLightColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.transparent, Colors.black87],
);
const kSecondaryColor = Color.fromARGB(255, 244, 244, 244);
const kBorderColor = Color.fromARGB(255, 217, 216, 216);
const kTextColor = Color(0xFF757575);
const kTertiaryTextColor = Color.fromARGB(255, 189, 188, 188);

// Font sizes
const double kH1FontSize = 35;
const double kHeaderFontSize = 20;
const double kPrimaryFontSize = 18;
const double kDefFontSize = 16;
const double kTertiaryFontSize = 14;
const double kQuaternaryFontSize = 10;

const kAnimationDuration = Duration(milliseconds: 200);

final h1TextStyle = TextStyle(
    fontSize: getPropScreenWidth(kH1FontSize),
    fontWeight: FontWeight.bold,
    color: Colors.black);
final headerTextStyle = TextStyle(
    fontSize: getPropScreenWidth(kHeaderFontSize),
    height: 1,
    fontWeight: FontWeight.bold,
    color: Colors.black);
final primaryTextStyle = TextStyle(
    fontSize: getPropScreenWidth(kPrimaryFontSize),
    color: kPrimaryColor,
    fontWeight: FontWeight.bold);
final defaultTextStyle = TextStyle(
  fontSize: getPropScreenWidth(kDefFontSize),
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

final tertiaryTextStyle = TextStyle(
    fontSize: getPropScreenWidth(kTertiaryFontSize), color: kTertiaryTextColor);
final tertiaryBoldTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
  fontSize: getPropScreenWidth(kTertiaryFontSize),
);

final quaternaryTextStyle = TextStyle(
    fontSize: getPropScreenWidth(kQuaternaryFontSize), color: kPrimaryColor);

const defaultDuration = Duration(milliseconds: 200);

// Form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Введите ваш e-mail";
const String kInvalidEmailError = "Неверный e-mail";
const String kPassNullError = "Введите пароль";
const String kShortPassError = "Пароль слишком короткий";
const String kMatchPassError = "Пароли не совпадают";
const String kNullNameError = "Введите ваше имя";
const String kPhoneNumberNullError = "Введите ваш номер";
const String kAddressNullError = "Введите ваш адрес";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      getPropScreenWidth(15),
    ),
    borderSide: const BorderSide(color: kTextColor),
  );
}

class AppUrls{
static const String baseUrl = 'https://dummyjson.com';
}