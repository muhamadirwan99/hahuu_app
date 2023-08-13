import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class PenokohanController extends State<PenokohanView> {
  static late PenokohanController instance;
  late PenokohanView view;

  int lengthPenokohan = 0;
  List dataPenokohan = [];
  List statusPenokohan = [];
  List<String> shuffledList = [];

  generateShuffledList(dataPemain, dataTalent) {
    int dataPemainLength = dataPemain.length;
    int damarValue;
    if (dataPemainLength >= 1 && dataPemainLength <= 5) {
      damarValue = 1;
      for (var i = 0; i < dataPemainLength - damarValue; i++) {
        shuffledList.add(dataTalent[0]);
      }
      for (var i = 0; i < damarValue; i++) {
        shuffledList.add(dataTalent[1]);
      }
    } else if (dataPemainLength >= 6 && dataPemainLength <= 8) {
      damarValue = 2;
      for (var i = 0; i < dataPemainLength - damarValue; i++) {
        shuffledList.add(dataTalent[0]);
      }
      for (var i = 0; i < damarValue; i++) {
        shuffledList.add(dataTalent[1]);
      }
    } else if (dataPemainLength >= 9 && dataPemainLength <= 10) {
      damarValue = 3;
      for (var i = 0; i < dataPemainLength - damarValue; i++) {
        shuffledList.add(dataTalent[0]);
      }
      for (var i = 0; i < damarValue; i++) {
        shuffledList.add(dataTalent[1]);
      }
    } else {
      damarValue = 0;
    }
    shuffledList.shuffle();
  }

  @override
  void initState() {
    instance = this;
    view = widget;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showInfoDialog(
        "Silahkan ${view.dataPemain[lengthPenokohan]} untuk memilih penokohan",
        () {
          Get.back();
        },
        DialogTransitionType.fade,
        Curves.fastOutSlowIn,
        const Duration(seconds: 1),
      );
    });
    generateShuffledList(view.dataPemain, view.dataTalent);

    dataPenokohan = List.from(view.dataPemain);
    statusPenokohan = List.generate(dataPenokohan.length, (index) => false);

    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
