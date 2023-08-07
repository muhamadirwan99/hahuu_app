import 'package:flutter/material.dart';
import '../view/tentukan_talent_view.dart';

class TentukanTalentController extends State<TentukanTalentView> {
  static late TentukanTalentController instance;
  late TentukanTalentView view;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
