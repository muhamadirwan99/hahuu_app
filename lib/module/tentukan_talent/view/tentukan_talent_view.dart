import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class TentukanTalentView extends StatefulWidget {
  final List dataPemain;
  const TentukanTalentView({
    Key? key,
    required this.dataPemain,
  }) : super(key: key);

  Widget build(context, TentukanTalentController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentukan Talent"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        color: neutralWhite,
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          right: 25,
          left: 25,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: blue900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              if (controller.formKey.currentState!.validate()) {
                controller.dataTalent.add(controller.aksaraController.text);
                controller.dataTalent.add(controller.damarController.text);
                Get.to(PenokohanView(
                  dataTalent: controller.dataTalent,
                  dataPemain: dataPemain,
                ));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Selanjutnya",
                style: myTextTheme.titleSmall?.copyWith(
                  color: neutralWhite,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                const TittleForm(label: "Aksara"),
                const SizedBox(
                  height: 8.0,
                ),
                BaseForm(
                  hintText: "Masukkan nama talent aksara",
                  controllerTextField: controller.aksaraController,
                  onChanged: (value) {},
                  validator:
                      Validatorless.required("Nama talent aksara harus diisi"),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const TittleForm(label: "Damar"),
                const SizedBox(
                  height: 8.0,
                ),
                BaseForm(
                  hintText: "Masukkan nama talent damar",
                  controllerTextField: controller.damarController,
                  onChanged: (value) {},
                  validator:
                      Validatorless.required("Nama talent damar harus diisi"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TentukanTalentView> createState() => TentukanTalentController();
}
