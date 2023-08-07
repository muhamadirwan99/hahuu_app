import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import '../controller/arena_bermain_controller.dart';

class ArenaBermainView extends StatefulWidget {
  const ArenaBermainView({Key? key}) : super(key: key);

  Widget build(context, ArenaBermainController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ArenaBermain"),
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
  State<ArenaBermainView> createState() => ArenaBermainController();
}
