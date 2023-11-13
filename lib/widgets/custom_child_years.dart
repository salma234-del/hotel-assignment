import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/extensions.dart';

class CustomChildYears extends StatelessWidget {
  const CustomChildYears({
    super.key,
    required this.childNumber,
    required this.childYears,
  });
  final int childNumber;
  final int childYears;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        12.width,
        Text(
          'Age of child $childNumber',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        const Spacer(),
        Text(
          '$childYears years',
          style: const TextStyle(
            color: AppColors.lightGrey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
