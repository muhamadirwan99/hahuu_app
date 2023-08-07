import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/011/883/287/original/modern-letter-c-colorful-logo-with-watter-drop-good-for-technology-logo-company-logo-dummy-logo-bussiness-logo-free-vector.jpg',
                height: 200,
                width: 200,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
