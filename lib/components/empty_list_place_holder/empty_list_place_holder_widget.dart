import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_list_place_holder_model.dart';
export 'empty_list_place_holder_model.dart';

class EmptyListPlaceHolderWidget extends StatefulWidget {
  const EmptyListPlaceHolderWidget({super.key});

  @override
  State<EmptyListPlaceHolderWidget> createState() =>
      _EmptyListPlaceHolderWidgetState();
}

class _EmptyListPlaceHolderWidgetState
    extends State<EmptyListPlaceHolderWidget> {
  late EmptyListPlaceHolderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListPlaceHolderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(18.0),
          shape: BoxShape.rectangle,
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'لا يوجد ',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                fontSize: 50.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
