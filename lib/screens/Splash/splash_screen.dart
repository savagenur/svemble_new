import 'package:flutter/material.dart';
import 'package:svemble_new/screens/Welcome/welcome_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, WelcomeScreen.routeName);
        },
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight,
                child: Image.asset(
                  "assets/images/welcome.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: SizeConfig.screenHeight / 1.5,
                  decoration:
                      const BoxDecoration(gradient: kPrimaryGradientLightColor),
                ),
              ),
              Positioned(
                left: getPropScreenWidth(30),
                bottom: getPropScreenWidth(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Добро\nпожаловать в 👋",
                      style: TextStyle(
                        fontSize: getPropScreenWidth(kH1FontSize),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: getPropScreenWidth(20),
                    ),
                    Text(
                      "Svemble",
                      style: TextStyle(
                        height: 1,
                        fontSize: getPropScreenWidth(kH1FontSize * 1.5),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: getPropScreenWidth(20),
                    ),
                    Text(
                      "Лучшее приложение века для электронной\nкоммерции для повседневных нужд!",
                      style: tertiaryTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
