import 'package:flutter/material.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/adults_counter_builder.dart';
import 'package:hotel_task/widgets/children_counter_builder.dart';
import 'package:hotel_task/widgets/custom_card.dart';
import 'package:hotel_task/widgets/custom_child_years.dart';

class RoomDetailsBody extends StatelessWidget {
  const RoomDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ROOM 1',
            style: Styles.textStyleDarkGrey.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 11,
            ),
          ),
          15.height,
          const AdultsCounterBuilder(),
          20.height,
          const ChildrenCounterBuilder(),
          20.height,
          const CustomChildYears(
            childNumber: 1,
            childYears: 14,
          ),
          20.height,
          const CustomChildYears(
            childNumber: 2,
            childYears: 14,
          ),
        ],
      ),
    );
  }
}
