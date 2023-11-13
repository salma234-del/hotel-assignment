import 'package:flutter/material.dart';
import 'package:hotel_task/utils/functions.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final TextStyle? textStyle;
  final Color borderColor;
  final double borderRadius;
  final double contentPadding;
  final TextAlign textAlign;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final IconButton? suffIcon;
  final bool readOnly;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    this.hint,
    this.textStyle,
    this.onTap,
    this.keyboardType,
    this.suffIcon,
    this.controller,
    this.borderColor = Colors.transparent,
    this.borderRadius = 0,
    this.contentPadding = 8,
    this.readOnly = false,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: formValidator,
      keyboardType: keyboardType,
      textAlign: textAlign,
      controller: controller,
      readOnly: readOnly,
      style: textStyle,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: textStyle,
        border: buildTextFormFieldBorder(),
        enabledBorder: buildTextFormFieldBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding),
        isDense: true,
        suffixIcon: suffIcon,
      ),
    );
  }

  OutlineInputBorder buildTextFormFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: borderColor,
      ),
    );
  }
}
