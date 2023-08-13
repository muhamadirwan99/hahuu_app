import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class PenokohanView extends StatefulWidget {
  final List dataPemain, dataTalent;
  final String aksaraTalent, damarTalent;

  const PenokohanView({
    Key? key,
    required this.dataPemain,
    required this.dataTalent,
    required this.aksaraTalent,
    required this.damarTalent,
  }) : super(key: key);

  Widget build(context, PenokohanController controller) {
    controller.view = this;

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
                    Get.to(ArenaBermainView(
                      shuffledList: controller.shuffledList,
                      dataPenokohan: controller.dataPenokohan,
                      aksaraTalent: aksaraTalent,
                      damarTalent: damarTalent,
                    ));
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
                          if (controller.lengthPenokohan + 1 <
                              dataPemain.length) {
                            showInfoDialog(
                              "Silahkan ${dataPemain[controller.lengthPenokohan + 1]} untuk memilih penokohan",
                              () {
                                Get.back();
                              },
                              DialogTransitionType.fade,
                              Curves.fastOutSlowIn,
                              const Duration(seconds: 1),
                            );
                          }

                          showInfoDialog(
                            "Pemain ${controller.dataPenokohan[index]} adalah ${controller.shuffledList[index]}",
                            () => (Get.back()),
                            DialogTransitionType.slideFromLeft,
                            Curves.fastOutSlowIn,
                            const Duration(seconds: 1),
                          );
                          controller.lengthPenokohan++;

                          controller.update();
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
                          child: Column(
                            children: [
                              Expanded(
                                child: SvgPicture.asset(
                                    "assets/images/avatar/avatar_$index.svg"),
                              ),
                              controller.statusPenokohan[index]
                                  ? Column(
                                      children: [
                                        const SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                            "Pemain ${controller.dataPenokohan[index]}")
                                      ],
                                    )
                                  : const SizedBox(),
                            ],
                          ),
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
