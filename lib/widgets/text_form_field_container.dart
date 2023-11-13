import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';

class FormFieldContainer extends StatelessWidget {
  const FormFieldContainer({
    super.key,
    this.child,
    this.padding = 5,
  });
  final Widget? child;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.all(padding),
      child: child,
    );
  }
}
