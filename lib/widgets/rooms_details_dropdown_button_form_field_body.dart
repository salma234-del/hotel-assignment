import 'package:flutter/material.dart';
import 'package:hotel_task/utils/functions.dart';
import 'package:hotel_task/utils/lists.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_drobdown_button_form_field.dart';
import 'package:hotel_task/widgets/text_form_field_container.dart';

class RoomsDetailsDropdownButtonFormFieldBody extends StatefulWidget {
  const RoomsDetailsDropdownButtonFormFieldBody({super.key});

  @override
  State<RoomsDetailsDropdownButtonFormFieldBody> createState() =>
      _RoomsDetailsDropdownButtonFormFieldBodyState();
}

class _RoomsDetailsDropdownButtonFormFieldBodyState
    extends State<RoomsDetailsDropdownButtonFormFieldBody> {
  String? selectedNumbers;

  @override
  Widget build(BuildContext context) {
    return FormFieldContainer(
      child: CustomDropdownButtonFormField(
        itemsList: buildOptionsList(Lists.numbersOptions),
        onChanged: changeDropdownChooseNumbersFieldValue,
        hint: 'Room, Adult and children numbers',
        textStyle: Styles.textStyleForm,
        horizontalContentPadding: 8,
        vericalContentPadding: 8,
      ),
    );
  }

   changeDropdownChooseNumbersFieldValue(value) {
    setState(() {
      selectedNumbers = value;
    });
  }
}
