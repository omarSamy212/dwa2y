import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_reminder_widget.dart' show AddReminderWidget;
import 'package:flutter/material.dart';

class AddReminderModel extends FlutterFlowModel<AddReminderWidget> {
  ///  Local state fields for this page.

  int index = 0;

  List<ScheduleStruct> dosePerDay = [];
  void addToDosePerDay(ScheduleStruct item) => dosePerDay.add(item);
  void removeFromDosePerDay(ScheduleStruct item) => dosePerDay.remove(item);
  void removeAtIndexFromDosePerDay(int index) => dosePerDay.removeAt(index);
  void insertAtIndexInDosePerDay(int index, ScheduleStruct item) =>
      dosePerDay.insert(index, item);
  void updateDosePerDayAtIndex(int index, Function(ScheduleStruct) updateFn) =>
      dosePerDay[index] = updateFn(dosePerDay[index]);

  int counter = 0;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'اسم الدواء مطلوب';
    }

    return null;
  }

  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for boxColor widget.
  FocusNode? boxColorFocusNode;
  TextEditingController? boxColorTextController;
  String? Function(BuildContext, String?)? boxColorTextControllerValidator;
  // State field(s) for pillColor widget.
  FocusNode? pillColorFocusNode;
  TextEditingController? pillColorTextController;
  String? Function(BuildContext, String?)? pillColorTextControllerValidator;
  // State field(s) for num widget.
  FocusNode? numFocusNode;
  TextEditingController? numTextController;
  String? Function(BuildContext, String?)? numTextControllerValidator;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;
  // State field(s) for pillDosagePerDay widget.
  int? pillDosagePerDayValue;
  // State field(s) for pillDosagePerDose widget.
  int? pillDosagePerDoseValue;
  // Stores action output result for [Custom Action - generateSchedule] action in Button widget.
  List<ScheduleStruct>? schedule;
  // State field(s) for drinkDosagePerDay widget.
  int? drinkDosagePerDayValue;
  // State field(s) for drinkDosagePerDose widget.
  int? drinkDosagePerDoseValue;
  // Stores action output result for [Custom Action - generateSchedule] action in Button widget.
  List<ScheduleStruct>? schedule2;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - validateScheduleTimes] action in Button widget.
  bool? timesValidation;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MedicinesRecord? medDoc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  UsersRecord? userDoc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  PharmaciesRecord? pharmDoc;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  UsersRecord? userDocc;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  PharmaciesRecord? pharmDocc;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    boxColorFocusNode?.dispose();
    boxColorTextController?.dispose();

    pillColorFocusNode?.dispose();
    pillColorTextController?.dispose();

    numFocusNode?.dispose();
    numTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
