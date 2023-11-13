import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';

abstract class Styles {
  // texts styles
  static TextStyle textStyleBold18 = const TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static TextStyle textStyleForm = const TextStyle(
    color: AppColors.textFormHint1,
  );

  static TextStyle textStyleDarkGrey = const TextStyle(
    color: AppColors.darkGrey,
  );

  // containers decoration
  static BoxDecoration formContainerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    gradient: const LinearGradient(
      colors: [
        AppColors.containerBg1,
        AppColors.containerBg2,
      ],
    ),
  );

  static BoxDecoration modalBottomShetAppBar = const BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
    ),
  );

  // shapes
  static ShapeBorder modalBottomSheetShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
}
