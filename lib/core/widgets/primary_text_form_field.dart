// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:svemble_new/core/utils/constants.dart';

class PrimaryTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(PointerDownEvent)? onTapOutside;
  final bool obscureText;
  final String? Function(String?)? validator;
  // final String? labelText;
  final InputDecoration? decoration;
  const PrimaryTextFormField({
    super.key,
    this.controller,
    this.onTapOutside,
    this.obscureText = false,
    this.validator,
    // this.labelText,
    this.decoration = const InputDecoration(),
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kPrimaryColor),
      onTapOutside: onTapOutside ??
          (event) {
            FocusScope.of(context).unfocus();
          },
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      decoration: decoration,
    );
  }
}
