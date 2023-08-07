import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class DataPemainView extends StatefulWidget {
  const DataPemainView({Key? key}) : super(key: key);

  Widget build(context, DataPemainController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pemain"),
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
                Get.to(const TentukanTalentView());
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
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
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
                ListView.builder(
                  itemCount: controller.sliderValue.round(),
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/avatar/avatar_$index.svg",
                              height: 50,
                              width: 50,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Expanded(
                              child: BaseForm(
                                hintText: "Pemain ${index + 1}",
                                onChanged: (value) {},
                                validator: Validatorless.required(
                                    "Pemain ${index + 1} tidak boleh kosong"),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 52,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<DataPemainView> createState() => DataPemainController();
}
