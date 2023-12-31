import 'package:hahuu_app/core.dart';
import 'package:flutter/material.dart';

Future showInfoDialog(
  String message,
  Function() onPressed,
  dynamic animationType,
  Curve curve,
  Duration duration,
) async {
  await showAnimatedDialog(
    context: globalContext,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        title: Text(
          'Info',
          style: myTextTheme.headlineLarge?.copyWith(color: blue800),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Center(
                  child: Text(
                message,
                style: myTextTheme.bodyMedium
                    ?.copyWith(color: gray800, height: 1.5),
              )),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: blue900,
              ),
              onPressed: onPressed,
              child: const Text("OK"),
            ),
          ),
        ],
      );
    },
    animationType: animationType,
    curve: curve,
    duration: duration,
  );
}
