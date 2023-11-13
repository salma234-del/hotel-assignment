import 'package:flutter/material.dart';
import 'package:hotel_task/utils/colors.dart';
import 'package:hotel_task/utils/extensions.dart';
import 'package:hotel_task/utils/functions.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/custom_button.dart';
import 'package:hotel_task/widgets/date_range_form_field_body.dart';
import 'package:hotel_task/widgets/rooms_details_dropdown_button_form_field_body.dart';
import 'package:hotel_task/widgets/select_city_form_field_body.dart';
import 'package:hotel_task/widgets/select_nationality_dropdown_button_form_field_body.dart';

class SearchHotelsFormBody extends StatefulWidget {
  const SearchHotelsFormBody({Key? key}) : super(key: key);

  @override
  State<SearchHotelsFormBody> createState() => _SearchHotelsFormBodyState();
}

class _SearchHotelsFormBodyState extends State<SearchHotelsFormBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        buildFindHotelsButton(),
        buildFormContainer(),
      ],
    );
  }

  Widget buildFindHotelsButton() {
    return CustomButton(
      text: 'find hotels',
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      color: AppColors.button1,
      raduis: 16,
      withIcon: true,
      icon: const Icon(Icons.search, size: 45),
      topPadding: 40,
      bottomPadding: 4,
      onPressed: () => findHotelsButtonActions(context),
    );
  }

  Widget buildFormContainer() {
    return Container(
      decoration: Styles.formContainerDecoration,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 55),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SelectCityFormFieldBody(),
              10.height,
              const DateRangeFormFieldBody(),
              10.height,
              const SelectNationalityDropdownButtonFormFieldBody(),
              10.height,
              const RoomsDetailsDropdownButtonFormFieldBody(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> findHotelsButtonActions(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      await showCustomModalButtonSheet(context: context);
    } else {
      changeFormAutoValidationMode();
    }
  }

  void changeFormAutoValidationMode() {
    setState(() {
      autoValidateMode = AutovalidateMode.always;
    });
  }
}
