import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class ArenaBermainView extends StatefulWidget {
  final List shuffledList, dataPenokohan;
  final String aksaraTalent, damarTalent;

  const ArenaBermainView({
    Key? key,
    required this.shuffledList,
    required this.dataPenokohan,
    required this.aksaraTalent,
    required this.damarTalent,
  }) : super(key: key);

  Widget build(context, ArenaBermainController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Arena Bermain"),
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
                itemCount: controller.listGrid.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text(
                        "Eliminasi",
                        style: myTextTheme.titleMedium?.copyWith(
                          color: dangerColor,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              if (index >= 0 && index < shuffledList.length) {
                                shuffledList[index] = null;
                                controller.statusEliminasi[index] = true;
                                controller.update();

                                if (shuffledList.contains(damarTalent) ==
                                    false) {
                                  Get.offAll(PemenangView(
                                    pemenang: aksaraTalent,
                                  ));
                                } else if (shuffledList
                                        .contains(aksaraTalent) ==
                                    false) {
                                  Get.offAll(PemenangView(
                                    pemenang: damarTalent,
                                  ));
                                }
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
                                      child: controller.statusEliminasi[index]
                                          ? Icon(
                                              Icons.close,
                                              color: dangerColor,
                                            )
                                          : SvgPicture.asset(
                                              "assets/images/avatar/avatar_$index.svg"),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text("Pemain ${dataPenokohan[index]}")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
  State<ArenaBermainView> createState() => ArenaBermainController();
}
