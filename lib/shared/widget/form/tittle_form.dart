import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class TittleForm extends StatefulWidget {
  final String label;

  const TittleForm({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  State<TittleForm> createState() => _TittleFormState();
}

class _TittleFormState extends State<TittleForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        widget.label,
        style: myTextTheme.labelLarge,
      ),
    );
  }
}
