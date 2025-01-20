import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_user_widget.dart' show AddNewUserWidget;
import 'package:flutter/material.dart';

class AddNewUserModel extends FlutterFlowModel<AddNewUserWidget> {
  ///  Local state fields for this page.

  int index = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? foundUser;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  PatientsRecord? pathDoc;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  PharmaciesRecord? pharmDoc;
  // Stores action output result for [Custom Action - linkPharmacyAndPatient] action in Button widget.
  bool? linkOutput;

  @override
  void initState(BuildContext context) {
    phoneTextControllerValidator = _phoneTextControllerValidator;
  }

  @override
  void dispose() {
    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
