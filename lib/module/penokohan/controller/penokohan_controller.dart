import 'package:flutter/material.dart';
import 'package:hahuu_app/state_util.dart';
import '../view/penokohan_view.dart';

class PenokohanController extends State<PenokohanView> {
  static late PenokohanController instance;
  late PenokohanView view;

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
