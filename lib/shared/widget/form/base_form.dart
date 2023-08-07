import 'package:flutter/material.dart';
import 'package:hahuu_app/core.dart';

class BaseForm extends StatefulWidget {
  final String hintText;
  final Function(String value) onChanged;
  final String? Function(String?)? validator;

  const BaseForm({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  State<BaseForm> createState() => _BaseFormState();
}

class _BaseFormState extends State<BaseForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: myTextTheme.bodyMedium?.copyWith(color: gray800),
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        hintText: widget.hintText,
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        hintStyle: myTextTheme.bodyMedium?.copyWith(color: gray600),
        errorStyle: const TextStyle(height: 0.7),
        errorMaxLines: 1,
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: red500, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: blue900, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: gray300, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: red500, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: gray300, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}
