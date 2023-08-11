import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class PenokohanView extends StatefulWidget {
  final List dataPemain, dataTalent;
  const PenokohanView({
    Key? key,
    required this.dataPemain,
    required this.dataTalent,
  }) : super(key: key);
  Widget build(context, PenokohanController controller) {
    controller.view = this;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.lengthPenokohan < dataPemain.length) {
        showInfoDialog(
            "Silahkan ${dataPemain[controller.lengthPenokohan]} untuk memilih penokohan",
            () {
          Get.back();
        });
      }
    });
    controller.generateShuffledList(dataPemain, dataTalent);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Penokohan"),
        actions: const [],
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
            onPressed: controller.lengthPenokohan < dataPemain.length
                ? null
                : () {
                    Get.to(const ArenaBermainView());
                  },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Mulai Bermain",
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
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: dataPemain.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        if (controller.lengthPenokohan < dataPemain.length) {
                          controller.dataPenokohan[index] =
                              dataPemain[controller.lengthPenokohan];
                          controller.statusPenokohan[index] = true;
                          controller.lengthPenokohan++;

                          controller.update();
                          showInfoDialog(
                            "Pemain ${controller.dataPenokohan[index]} adalah ${controller.shuffledList[index]}",
                            () => (Get.back()),
                          );
                        }
                      },
                      child: Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          color: blue100,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: controller.statusPenokohan[index]
                              ? Text(
                                  "Pemain ${controller.dataPenokohan[index]}")
                              : SvgPicture.asset(
                                  "assets/images/avatar/avatar_$index.svg"),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PenokohanView> createState() => PenokohanController();
}
