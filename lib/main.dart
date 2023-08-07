import 'package:hahuu_app/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Get.mainTheme.value = getDefaultTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Hahuu App',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const SplashscreenView(),
        );
      },
    );
  }
}
