import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_card.dart';
import 'package:hotel_task/widgets/custom_switch.dart';

class SwitchBody extends StatelessWidget {
  const SwitchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      contentChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Pet-friendly',
                      style: Styles.textStyleDarkGrey.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    3.width,
                    const Icon(
                      Icons.info_outline,
                      size: 16,
                      color: AppColors.darkGrey,
                    ),
                  ],
                ),
                8.height,
                Text(
                  'Only show stays that allow pets',
                  style: Styles.textStyleDarkGrey.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Column(
            children: [
              CustomSwitch(),
            ],
          )
        ],
      ),
    );
  }
}
