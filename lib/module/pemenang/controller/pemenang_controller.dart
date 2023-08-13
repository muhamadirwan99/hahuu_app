import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';
import '../view/pemenang_view.dart';

class PemenangController extends State<PemenangView> {
  static late PemenangController instance;
  late PemenangView view;

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
