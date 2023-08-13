import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import '../controller/pemenang_controller.dart';

class PemenangView extends StatefulWidget {
  final String pemenang;
  const PemenangView({
    Key? key,
    required this.pemenang,
  }) : super(key: key);

  Widget build(context, PemenangController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pemenang"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(pemenang),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PemenangView> createState() => PemenangController();
}
