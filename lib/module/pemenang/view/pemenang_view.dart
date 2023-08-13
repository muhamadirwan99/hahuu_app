import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import 'package:lottie/lottie.dart';

class PemenangView extends StatefulWidget {
  final String pemenang;
  const PemenangView({
    Key? key,
    required this.pemenang,
  }) : super(key: key);

  Widget build(context, PemenangController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                LottieBuilder.asset(
                  "assets/file/json/award.json",
                ),
                Text("Pemenangnya:", style: myTextTheme.headlineLarge),
                const SizedBox(
                  height: 16.0,
                ),
                Text(pemenang, style: myTextTheme.headlineLarge),
                const SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: PrimaryButton(
                      onPressed: () {
                        Get.offAll(const BerandaView());
                      },
                      text: "Kembali ke Beranda"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PemenangView> createState() => PemenangController();
}
