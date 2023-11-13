import 'package:flutter/material.dart';
import 'package:hotel_task/utils/functions.dart';
import 'package:hotel_task/utils/lists.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_drobdown_button_form_field.dart';
import 'package:hotel_task/widgets/text_form_field_container.dart';

class SelectNationalityDropdownButtonFormFieldBody extends StatefulWidget {
  const SelectNationalityDropdownButtonFormFieldBody({super.key});

  @override
  State<SelectNationalityDropdownButtonFormFieldBody> createState() =>
      _SelectNationalityDrobdownButtonFormFieldBodyState();
}

class _SelectNationalityDrobdownButtonFormFieldBodyState
    extends State<SelectNationalityDropdownButtonFormFieldBody> {
      String? selectedNationality;

  @override
  Widget build(BuildContext context) {
    return FormFieldContainer(
      child: CustomDropdownButtonFormField(
        itemsList: buildOptionsList(Lists.nationalityOptions),
        onChanged: changeDropdownNationalityFieldValue,
        hint: 'Select Nationality',
        textStyle: Styles.textStyleForm,
        vericalContentPadding: 10,
        horizontalContentPadding: 25,
      ),
    );
  }

  changeDropdownNationalityFieldValue(value) {
    setState(() {
      selectedNationality = value;
    });
  }
}
