import 'package:flutter/material.dart';
import 'package:svemble_new/screens/Draft/components/body.dart';

class DraftScreen extends StatelessWidget {
  static const routeName = "/draft";
  const DraftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
