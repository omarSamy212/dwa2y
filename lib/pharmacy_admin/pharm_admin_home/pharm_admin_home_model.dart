import '/flutter_flow/flutter_flow_util.dart';
import 'pharm_admin_home_widget.dart' show PharmAdminHomeWidget;
import 'package:flutter/material.dart';

class PharmAdminHomeModel extends FlutterFlowModel<PharmAdminHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
