import '/flutter_flow/flutter_flow_util.dart';
import 'list_pharm_users_widget.dart' show ListPharmUsersWidget;
import 'package:flutter/material.dart';

class ListPharmUsersModel extends FlutterFlowModel<ListPharmUsersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
