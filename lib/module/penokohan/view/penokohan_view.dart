import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import '../controller/penokohan_controller.dart';

class PenokohanView extends StatefulWidget {
  const PenokohanView({Key? key}) : super(key: key);

  Widget build(context, PenokohanController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Penokohan"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<PenokohanView> createState() => PenokohanController();
}
