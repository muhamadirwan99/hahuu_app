import 'package:flutter/material.dart';
import 'package:hahuu_app/state_util.dart';
import '../view/tentukan_talent_view.dart';

class TentukanTalentController extends State<TentukanTalentView> {
  static late TentukanTalentController instance;
  late TentukanTalentView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
