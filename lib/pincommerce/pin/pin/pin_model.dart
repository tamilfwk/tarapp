import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pin_widget.dart' show PinWidget;
import 'package:flutter/material.dart';

class PinModel extends FlutterFlowModel<PinWidget> {
  ///  Local state fields for this page.

  String? item;

  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  String? searchValue;
  FormFieldController<String>? searchValueController;
  // Stores action output result for [Backend Call - SQLite (GetItems)] action in search widget.
  List<GetItemsRow>? itema;
  // Stores action output result for [Backend Call - SQLite (GetItems)] action in search widget.
  List<GetItemsRow>? aitem;
  var input = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
