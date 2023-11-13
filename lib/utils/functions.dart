import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_task/utils/styles.dart';
import 'package:hotel_task/widgets/modal_bottom_sheet_body.dart';


// make portrait screen
Future<void> portritScreen() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

// main initilization
Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await portritScreen();
}


// check if form fields is empty
String? formValidator(value) {
  if (value == null || value.isEmpty) {
    return 'Field must not be empty';
  }
  return null;
}

// build drobdown button options
List<DropdownMenuItem> buildOptionsList(List items) {
  return items.map((item) {
    return DropdownMenuItem(
      value: item,
      child: Text(item),
    );
  }).toList();
}

// generate rooms, adult, children numbers options
List<String> generateCombinations() {
  List<String> temp = [];
  for (int rooms = 1; rooms <= 5; rooms++) {
    for (int adults = 0; adults <= 5; adults++) {
      for (int children = 0; children <= 5; children++) {
        if (adults + children < rooms) {
          continue;
        }
        String combination = '$rooms Room, $adults Adult, $children Children';
        temp.add(combination);
      }
    }
  }
  return temp;
}

// get date range
Future pickDateRange({required BuildContext context}) async {
  return await showDateRangePicker(
    context: context,
    firstDate: DateTime.now(),
    lastDate: DateTime(2025, 12, 30),
  );
}

// formate date
String formatDate(DateTimeRange date) {
  return '${date.start.year}-${date.start.month}-${date.start.day} ==> ${date.end.year}-${date.end.month}-${date.end.day}';
}

// custom modal button sheet
Future showCustomModalButtonSheet({required BuildContext context}) async =>
    await showModalBottomSheet(
      context: context,
      builder: (context) => const ModalBottomSheetBody(),
      shape: Styles.modalBottomSheetShape,
      isScrollControlled: true,
      useSafeArea: true,
    );
