import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class SplashscreenController extends State<SplashscreenView>
    implements MvcController {
  static late SplashscreenController instance;
  late SplashscreenView view;

  navigateToLogin() async {
    await Future.delayed(const Duration(milliseconds: 3400));
    Get.offAll(const BerandaView());
  }

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
