import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/functions.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_text_form_field.dart';
import 'package:hotel_task/widgets/text_form_field_container.dart';

class DateRangeFormFieldBody extends StatefulWidget {
  const DateRangeFormFieldBody({
    super.key,
  });

  @override
  State<DateRangeFormFieldBody> createState() => _DateRangeFormFieldBodyState();
}

class _DateRangeFormFieldBodyState extends State<DateRangeFormFieldBody> {
  IconData suffIcon = Icons.date_range;
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FormFieldContainer(
      padding: 8,
      child: CustomTextFormField(
        keyboardType: TextInputType.datetime,
        controller: dateController,
        textStyle: Styles.textStyleForm.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        borderColor: AppColors.textFormBorder2,
        borderRadius: 8,
        contentPadding: 15,
        readOnly: true,
        suffIcon: IconButton(
          onPressed: suffIconActions,
          icon: Icon(suffIcon),
        ),
        onTap: dateFormFieldActions,
      ),
    );
  }

  // function to toggletoggle between remove data icon and date icon
  void suffIconActions() {
    if (dateController.text != '') {
      setState(() {
        dateController.text = '';
        suffIcon = Icons.date_range;
      });
    } else {
      dateFormFieldActions();
    }
  }

  // function to show date range picker and change form field value
  Future<void> dateFormFieldActions() async {
    DateTimeRange? newDate = await pickDateRange(context: context);
    setState(() {
      if (newDate != null) {
        suffIcon = Icons.close_sharp;
        dateController.text = formatDate(newDate);
      }
    });
  }
}
