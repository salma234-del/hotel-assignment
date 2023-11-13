
import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_text_form_field.dart';
import 'package:hotel_task/widgets/text_form_field_container.dart';

class SelectCityFormFieldBody extends StatelessWidget {
  const SelectCityFormFieldBody({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return FormFieldContainer(
      child: CustomTextFormField(
        hint: 'Select city',
        textStyle: Styles.textStyleForm,
        borderColor: AppColors.textFormBorder1,
        borderRadius: 32,
        keyboardType: TextInputType.text,
      ),
    );
  }
}
