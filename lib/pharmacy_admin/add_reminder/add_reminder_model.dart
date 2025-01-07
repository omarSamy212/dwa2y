import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_reminder_widget.dart' show AddReminderWidget;
import 'package:flutter/material.dart';

class AddReminderModel extends FlutterFlowModel<AddReminderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nationalID widget.
  FocusNode? nationalIDFocusNode;
  TextEditingController? nationalIDTextController;
  String? Function(BuildContext, String?)? nationalIDTextControllerValidator;
  // State field(s) for fullAddress widget.
  FocusNode? fullAddressFocusNode1;
  TextEditingController? fullAddressTextController1;
  String? Function(BuildContext, String?)? fullAddressTextController1Validator;
  // State field(s) for fullAddress widget.
  FocusNode? fullAddressFocusNode2;
  TextEditingController? fullAddressTextController2;
  String? Function(BuildContext, String?)? fullAddressTextController2Validator;
  // State field(s) for fullAddress widget.
  FocusNode? fullAddressFocusNode3;
  TextEditingController? fullAddressTextController3;
  String? Function(BuildContext, String?)? fullAddressTextController3Validator;
  // State field(s) for fullAddress widget.
  FocusNode? fullAddressFocusNode4;
  TextEditingController? fullAddressTextController4;
  String? Function(BuildContext, String?)? fullAddressTextController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nationalIDFocusNode?.dispose();
    nationalIDTextController?.dispose();

    fullAddressFocusNode1?.dispose();
    fullAddressTextController1?.dispose();

    fullAddressFocusNode2?.dispose();
    fullAddressTextController2?.dispose();

    fullAddressFocusNode3?.dispose();
    fullAddressTextController3?.dispose();

    fullAddressFocusNode4?.dispose();
    fullAddressTextController4?.dispose();
  }
}
