// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class DangerButton extends StatefulWidget {
  final Function() onPressed;
  final String text;

  const DangerButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  State<DangerButton> createState() => _DangerButtonState();
}

class _DangerButtonState extends State<DangerButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: red500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: myTextTheme.titleSmall?.copyWith(
            color: neutralWhite,
          ),
        ),
      ),
    );
  }
}
