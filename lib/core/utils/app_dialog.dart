import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:svemble_new/constants.dart';

class AppDialog {
  static void showSuccess(String msg, {Duration duration = const Duration(seconds: 2)}) {
    SmartDialog.showToast('',
        displayTime: duration,
        clickMaskDismiss: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Color.fromRGBO(26, 42, 97, 0.06),
                  ),
                ]),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    minLeadingWidth: 10,
                    leading:  Icon(
                      Icons.check_circle,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                    title: Text(msg),
                  ),
                ),
              ),
            ),
        alignment: Alignment.topLeft,
        maskColor: Colors.transparent);
  }
  static void showInfo(String msg, {Duration duration = const Duration(seconds: 2)}) {
    SmartDialog.showToast('',
        displayTime: duration,
        clickMaskDismiss: true,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Color.fromRGBO(26, 42, 97, 0.06),
                  ),
                ]),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    minLeadingWidth: 10,
                    leading:  Icon(
                      Icons.info_outline_rounded,
                      color: kPrimaryColor,
                      size: 30,
                    ),
                    title: Text(msg),
                  ),
                ),
              ),
            ),
        alignment: Alignment.topLeft,
        maskColor: Colors.transparent);
  }

  static void showError(String? msg, {Duration duration = const Duration(seconds: 3)}) {
    SmartDialog.showToast('',
        displayTime: duration,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 3,
                    color: Color.fromRGBO(26, 42, 97, 0.06),
                  ),
                ]),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    minLeadingWidth: 10,
                    leading:  Icon(
                      Icons.error_outline,
                      color: kPrimaryRedColor,
                      size: 30,
                    ),
                    title: Text(msg ?? "Error. Try again, please!"),
                  ),
                ),
              ),
            ),
        alignment: Alignment.topLeft,
        maskColor: Colors.transparent);
  }

  static void showChatMessage(String msg, BuildContext context,
      {Duration duration = const Duration(seconds: 2), required VoidCallback onTapped}) {
    Flushbar(
      message: msg,
      duration: duration,
      margin: const EdgeInsets.only(top: 12, left: 16, right: 16),
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.white,
      messageColor: Colors.black,
      shouldIconPulse: false,
      onTap: (flushBar) {
        onTapped();
        flushBar.dismiss();
      },
      boxShadows: [
        BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 3,
            color: Colors.black.withOpacity(0.15)
            // color: Color.fromRGBO(26, 42, 97, 0.06),
            ),
      ],
      // duration: duration,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      icon: const Icon(
        Icons.chat,
        color: Colors.black,
        size: 30,
      ),
    ).show(context);
  }

  static void showNotification(String title, String subtitle, BuildContext context,
      {Duration duration = const Duration(seconds: 2)}) {
    Flushbar(
      title: title,
      message: subtitle,
      duration: duration,
      margin: const EdgeInsets.only(top: 12, left: 16, right: 16),
      borderRadius: BorderRadius.circular(8),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.white,
      messageColor: Colors.black,
      titleColor: Colors.black,
      shouldIconPulse: false,
      boxShadows: [
        BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 3,
            color: Colors.black.withOpacity(0.15)
            // color: Color.fromRGBO(26, 42, 97, 0.06),
            ),
      ],
      // duration: duration,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      icon: const Icon(
        Icons.info_outline_rounded,
        color: Colors.black,
        size: 30,
      ),
    ).show(context);
  }
}
