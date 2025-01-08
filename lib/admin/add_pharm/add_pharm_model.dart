import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_pharm_widget.dart' show AddPharmWidget;
import 'package:flutter/material.dart';

class AddPharmModel extends FlutterFlowModel<AddPharmWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'البريد الالكتروني مطلوب';
    }

    return null;
  }

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'اسم الصيدلية مطلوب';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }

    if (!RegExp('^(01[1250])(\\d{4})(\\d{4})\$').hasMatch(val)) {
      return 'أدخل رقم هاتف صحيح';
    }
    return null;
  }

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // State field(s) for imageLink widget.
  FocusNode? imageLinkFocusNode;
  TextEditingController? imageLinkTextController;
  String? Function(BuildContext, String?)? imageLinkTextControllerValidator;
  String? _imageLinkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'رابط شعار الصيدلية مطلوب';
    }

    return null;
  }

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'وصف العنوان مطلوب';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Custom Action - createPharmAcc] action in Button widget.
  DocumentReference? userDocRef;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PharmaciesRecord? pharmDocRef;

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    nameTextControllerValidator = _nameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    imageLinkTextControllerValidator = _imageLinkTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    imageLinkFocusNode?.dispose();
    imageLinkTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController6?.dispose();

    textFieldFocusNode2?.dispose();
    textController7?.dispose();
  }
}
