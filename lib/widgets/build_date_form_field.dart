//  import 'package:flutter/material.dart';

// class _LemburFormState extends State<LemburForm> {
//   final _fromKey = GlobalKey<FormState>();
//   String tanggal;
//   DateTimeRange dateRange;

//   final List<String> errors = [];

//   String getFrom() {
//     if (dateRange == null) {
//       return 'Hari ini';
//     } else {
//       return DateFormat('dd/MM/yyyy').format(dateRange.start);
//     }
//   }

//   String getUntil() {
//     if (dateRange == null) {
//       return 'Sampai dengan';
//     } else {
//       return DateFormat('dd/MM/yyyy').format(dateRange.end);
//     }
//   }
   
//   TextFormField buildDateFromField() {
//     return TextFormField(
//       keyboardType: TextInputType.datetime,
//       onSaved: (newValue) => tanggal = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kDateNullError);
//         }
//       },
//       validator: (value) {
//         if (value.isEmpty) {
//           addError(error: kDateNullError);
//           return "";
//         }
//         return null;
//       },
//       onTap: () {
//         pickDateRange(context);
//         FocusScope.of(context).requestFocus(new FocusNode());
//       },
//       decoration: InputDecoration(
//         labelText: "Tanggal Lembur",
//         hintText: "${getFrom()} - ${getUntil()}",
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//       ),
//     );
//   }

//   // Data Range Picker
//   Future pickDateRange(BuildContext context) async {
//     final initialDateRange = DateTimeRange(
//       start: DateTime.now(),
//       end: DateTime.now().add(Duration(hours: 24 * 3)),
//     );
//     final newDateRange = await showDateRangePicker(
//       context: context,
//       firstDate: DateTime(DateTime.now().year - 5),
//       lastDate: DateTime(DateTime.now().year + 5),
//       initialDateRange: dateRange ?? initialDateRange,
//       builder: (BuildContext context, Widget child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: Colors.teal,
//             accentColor: Colors.teal,
//             colorScheme: ColorScheme.light(primary: Colors.teal),
//             buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
//           ),
//           child: child,
//         );
//       },
//     );

//     if (newDateRange == null) return;
//     setState(() => dateRange = newDateRange);
//   }
// }
