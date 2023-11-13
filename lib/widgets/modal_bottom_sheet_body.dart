import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/sizes.dart';
import 'package:hotel_task/widgets/custom_button.dart';
import 'package:hotel_task/widgets/custom_card.dart';
import 'package:hotel_task/widgets/modal_bottom_sheet_app_bar.dart';
import 'package:hotel_task/widgets/room_details_body.dart';
import 'package:hotel_task/widgets/rooms_counter_builder.dart';
import 'package:hotel_task/widgets/switch_body.dart';

class ModalBottomSheetBody extends StatelessWidget {
  const ModalBottomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ModalBottomSheetAppBar(), // custom app bar
        // modal bottom sheet content
        Expanded(
          child: Container(
            color: AppColors.modelBottomSheetBg,
            width: Sizes.width(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomCard(
                            contentChild: RoomsCounterBuilder(),
                          ),
                          10.height,
                          const RoomDetailsBody(),
                          10.height,
                          const SwitchBody(),
                        ],
                      ),
                    ),
                  ),
                  buildApplyButton(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildApplyButton() => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            text: 'Apply',
            onPressed: () {},
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            topPadding: 15,
            bottomPadding: 15,
            color: AppColors.button2,
          ),
        ],
      );
}
