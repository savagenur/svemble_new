import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:svemble_new/auth/views/SignIn/signin_screen.dart';
import 'package:svemble_new/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "Мы предлагаем высококачественную продукцию только для вас",
      "Ваше удовлетворение является нашим приоритетом номер один",
      "Удовлетворим ваши повседневные потребности вместе с Svemble прямо сейчас!",
    ];
    List<String> images = [
      "welcome-2.jpg",
      "welcome-1.jpg",
      "welcome-3.jpg",
    ];
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            useScrollView: true,
            image: buildImage(images[0]),
            decoration: buildPageDecoration(),
            title: titles[0],
            bodyWidget: Container(),
          ),
          PageViewModel(
            useScrollView: true,
            image: buildImage(images[1]),
            decoration: buildPageDecoration(),
            title: titles[1],
            bodyWidget: Container(),
          ),
          PageViewModel(
            useScrollView: true,
            image: buildImage(images[2]),
            decoration: buildPageDecoration(),
            title: titles[2],
            bodyWidget: Container(),
          ),
        ],
        controlsMargin: EdgeInsets.only(
          bottom: getPropScreenWidth(20),
        ),
        next: const Text("Далее"),
        overrideDone: ElevatedButton(
          child: const Text(
            "Начать",
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              SignInScreen.routeName,
            );
          },
        ),
        dotsDecorator: DotsDecorator(
            color: const Color(0xFFBDBDBD),
            activeSize: const Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }

  PageDecoration buildPageDecoration() {
    return const PageDecoration(
        contentMargin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
        imageFlex: 3,
        titleTextStyle: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black));
  }

  Image buildImage(String text) {
    return Image.asset(
      "assets/images/$text",
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}
