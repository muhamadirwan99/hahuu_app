import 'package:flutter/material.dart';
import 'package:hahuu_app/state_util.dart';
import '../view/arena_bermain_view.dart';

class ArenaBermainController extends State<ArenaBermainView> {
  static late ArenaBermainController instance;
  late ArenaBermainView view;

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
