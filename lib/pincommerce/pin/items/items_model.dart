import '/flutter_flow/flutter_flow_util.dart';
import 'items_widget.dart' show ItemsWidget;
import 'package:flutter/material.dart';

class ItemsModel extends FlutterFlowModel<ItemsWidget> {
  ///  Local state fields for this page.

  int? search;

  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  final searchKey = GlobalKey();
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? searchSelectedOption;
  String? Function(BuildContext, String?)? searchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
  }
}
