import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import '../controller/tentukan_talent_controller.dart';

class TentukanTalentView extends StatefulWidget {
  const TentukanTalentView({Key? key}) : super(key: key);

  Widget build(context, TentukanTalentController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentukan Talent"),
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
  State<TentukanTalentView> createState() => TentukanTalentController();
}
