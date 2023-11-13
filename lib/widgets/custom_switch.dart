import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        CupertinoSwitch(
          value: switchValue,
          onChanged: (value) {
            setState(() {
              switchValue = value;
            });
          },
          applyTheme: true,
        ),
        if (!switchValue)
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.circle_outlined,
              size: 12,
              color: AppColors.lightGrey.withOpacity(0.5),
            ),
          ),
      ],
    );
  }
}
