import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'proddetails_widget.dart' show ProddetailsWidget;
import 'package:flutter/material.dart';

class ProddetailsModel extends FlutterFlowModel<ProddetailsWidget> {
  ///  Local state fields for this page.

  int? type = 0;

  String? name;

  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
