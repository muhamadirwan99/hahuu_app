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
      appBar: AppBar(
        title: const Text("Hahuu App"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: const [
            // if (UserDatabase.dataRole!["sts_verifikasi"] == "1")
            //   const LayananVerifikator(),

            SizedBox(
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
