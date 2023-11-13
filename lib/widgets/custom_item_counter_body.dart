import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_icon_button.dart';

class CustomItemCounterBody extends StatelessWidget {
  const CustomItemCounterBody({
    super.key,
    required this.itemText,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
    this.mnRange = 1,
    this.mxRange = 4,
  });

  final String itemText;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int mnRange;
  final int mxRange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemText,
          style: Styles.textStyleDarkGrey,
        ),
        const Spacer(),
        CustomIconButton(
          onTap: onDecrement,
          color: count > mnRange
              ? AppColors.addAndMinus
              : AppColors.addAndMinus.withOpacity(0.3),
          icon: Icons.remove,
        ),
        15.width,
        Text(
          count.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        15.width,
        CustomIconButton(
          onTap: onIncrement,
          color: count < mxRange
              ? AppColors.addAndMinus
              : AppColors.addAndMinus.withOpacity(0.3),
          icon: Icons.add,
        ),
      ],
    );
  }
}
