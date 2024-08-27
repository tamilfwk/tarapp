import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notionint_widget.dart' show NotionintWidget;
import 'package:flutter/material.dart';

class NotionintModel extends FlutterFlowModel<NotionintWidget> {
  ///  Local state fields for this page.

  String? item;

  ///  State fields for stateful widgets in this page.

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // Stores action output result for [Backend Call - API (notionaccesstoken)] action in Button widget.
  ApiCallResponse? notiontoken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeFocusNode?.dispose();
    codeTextController?.dispose();
  }
}
