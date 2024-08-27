import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tarai_widget.dart' show TaraiWidget;
import 'package:flutter/material.dart';

class TaraiModel extends FlutterFlowModel<TaraiWidget> {
  ///  Local state fields for this page.

  String? response;

  ///  State fields for stateful widgets in this page.

  // State field(s) for query widget.
  FocusNode? queryFocusNode;
  TextEditingController? queryTextController;
  String? Function(BuildContext, String?)? queryTextControllerValidator;
  // Stores action output result for [Backend Call - API (text)] action in Icon widget.
  ApiCallResponse? ai;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    queryFocusNode?.dispose();
    queryTextController?.dispose();
  }
}
