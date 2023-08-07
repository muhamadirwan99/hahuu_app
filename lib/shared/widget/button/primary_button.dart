// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class PrimaryButton extends StatefulWidget {
  final Function() onPressed;
  final String text;

  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: blue900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            widget.text,
            style: myTextTheme.titleSmall?.copyWith(
              color: neutralWhite,
            ),
          ),
        ),
      ),
    );
  }
}
