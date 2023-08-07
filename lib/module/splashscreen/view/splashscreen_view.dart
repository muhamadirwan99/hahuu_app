import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:hahuu_app/core.dart';

// ignore: must_be_immutable
class SplashscreenView extends StatefulWidget {
  const SplashscreenView({
    Key? key,
  }) : super(key: key);

  Widget build(context, SplashscreenController controller) {
    controller.view = this;

    controller.navigateToLogin();

    return Scaffold(
      backgroundColor: neutralWhite,
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Column(
          children: const [
            Spacer(),
            // Lottie.asset('assets/file/json/logo_sakti.json'),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
