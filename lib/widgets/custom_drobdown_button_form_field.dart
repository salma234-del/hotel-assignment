import 'package:flutter/material.dart';
import 'package:hotel_task/utils/assets.dart';
import 'package:hotel_task/utils/functions.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  final String? hint;
  final TextStyle? textStyle;
  final double vericalContentPadding;
  final double horizontalContentPadding;

  final List<DropdownMenuItem> itemsList;
  final Function(dynamic) onChanged;

  const CustomDropdownButtonFormField({
    Key? key,
    required this.itemsList,
    required this.onChanged,
    this.hint,
    this.textStyle,
    this.vericalContentPadding = 0,
    this.horizontalContentPadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // I put the icon on another widget to avoid overflow of the DropdownButtonFormField icon
        Expanded(
          child: DropdownButtonFormField(
            validator: formValidator,
            icon: const Icon(null),
            style: textStyle,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: textStyle,
              contentPadding: EdgeInsets.symmetric(
                horizontal: horizontalContentPadding,
                vertical: vericalContentPadding,
              ),
              isDense: true,
              border: InputBorder.none,
            ),
            items: itemsList,
            onChanged: onChanged,
            isExpanded:
                true, // to make dropdown button expand to fill the available horizontal space
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: const Image(
            image: AssetImage(Assets.arrowDown),
            width: 12,
          ),
        ),
      ],
    );
  }
}
