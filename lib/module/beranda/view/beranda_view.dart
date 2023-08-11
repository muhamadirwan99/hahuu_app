import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

// ignore: must_be_immutable
class BerandaView extends StatefulWidget {
  const BerandaView({
    Key? key,
  }) : super(key: key);

  Widget build(context, BerandaController controller) {
    controller.view = this;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
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
            const SizedBox(
              height: 24.0,
            ),
            PrimaryButton(
                onPressed: () {
                  Get.to(DataPemainView(
                    sliderValue: controller.sliderValue,
                  ));
                },
                text: "Mari Bermain"),
            const SizedBox(
              height: 32,
            ),
            Text(
              "Jumlah Pemain: ${controller.sliderValue.round()}",
              style: myTextTheme.displayLarge?.copyWith(
                color: neutralBlack,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Slider(
              value: controller.sliderValue,
              max: 10,
              divisions: 10,
              label: controller.sliderValue.round().toString(),
              onChanged: (double value) {
                controller.sliderValue = value;
                controller.update();
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
