import 'package:flutter/material.dart';
import '../view/arena_bermain_view.dart';

class ArenaBermainController extends State<ArenaBermainView> {
  static late ArenaBermainController instance;
  late ArenaBermainView view;

  List statusEliminasi = [];
  List listGrid = [];

  @override
  void initState() {
    instance = this;
    view = widget;
    listGrid = List.from(view.shuffledList);
    statusEliminasi = List.generate(view.shuffledList.length, (index) => false);
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
