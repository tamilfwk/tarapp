import '/flutter_flow/flutter_flow_util.dart';
import 'item_widget.dart' show ItemWidget;
import 'package:flutter/material.dart';

class ItemModel extends FlutterFlowModel<ItemWidget> {
  ///  Local state fields for this page.

  int? type = 0;

  String? name;

  Color? color = const Color(0xffffffff);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for stock widget.
  FocusNode? stockFocusNode;
  TextEditingController? stockTextController;
  String? Function(BuildContext, String?)? stockTextControllerValidator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode1;
  TextEditingController? skuTextController1;
  String? Function(BuildContext, String?)? skuTextController1Validator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode2;
  TextEditingController? skuTextController2;
  String? Function(BuildContext, String?)? skuTextController2Validator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode3;
  TextEditingController? skuTextController3;
  String? Function(BuildContext, String?)? skuTextController3Validator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode4;
  TextEditingController? skuTextController4;
  String? Function(BuildContext, String?)? skuTextController4Validator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode5;
  TextEditingController? skuTextController5;
  String? Function(BuildContext, String?)? skuTextController5Validator;
  // State field(s) for isbn widget.
  FocusNode? isbnFocusNode;
  TextEditingController? isbnTextController;
  String? Function(BuildContext, String?)? isbnTextControllerValidator;
  // State field(s) for mpn widget.
  FocusNode? mpnFocusNode;
  TextEditingController? mpnTextController;
  String? Function(BuildContext, String?)? mpnTextControllerValidator;
  // State field(s) for ean widget.
  FocusNode? eanFocusNode;
  TextEditingController? eanTextController;
  String? Function(BuildContext, String?)? eanTextControllerValidator;
  // State field(s) for upc widget.
  FocusNode? upcFocusNode;
  TextEditingController? upcTextController;
  String? Function(BuildContext, String?)? upcTextControllerValidator;
  Color? colorPicked;
  // State field(s) for material widget.
  FocusNode? materialFocusNode;
  TextEditingController? materialTextController;
  String? Function(BuildContext, String?)? materialTextControllerValidator;
  // State field(s) for manufact widget.
  FocusNode? manufactFocusNode;
  TextEditingController? manufactTextController;
  String? Function(BuildContext, String?)? manufactTextControllerValidator;
  // State field(s) for brand widget.
  FocusNode? brandFocusNode;
  TextEditingController? brandTextController;
  String? Function(BuildContext, String?)? brandTextControllerValidator;
  // State field(s) for unit widget.
  FocusNode? unitFocusNode1;
  TextEditingController? unitTextController1;
  String? Function(BuildContext, String?)? unitTextController1Validator;
  // State field(s) for unit widget.
  FocusNode? unitFocusNode2;
  TextEditingController? unitTextController2;
  String? Function(BuildContext, String?)? unitTextController2Validator;
  // State field(s) for unit widget.
  FocusNode? unitFocusNode3;
  TextEditingController? unitTextController3;
  String? Function(BuildContext, String?)? unitTextController3Validator;
  // State field(s) for desc widget.
  FocusNode? descFocusNode;
  TextEditingController? descTextController;
  String? Function(BuildContext, String?)? descTextControllerValidator;
  // State field(s) for sku widget.
  FocusNode? skuFocusNode6;
  TextEditingController? skuTextController6;
  String? Function(BuildContext, String?)? skuTextController6Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    stockFocusNode?.dispose();
    stockTextController?.dispose();

    skuFocusNode1?.dispose();
    skuTextController1?.dispose();

    skuFocusNode2?.dispose();
    skuTextController2?.dispose();

    skuFocusNode3?.dispose();
    skuTextController3?.dispose();

    skuFocusNode4?.dispose();
    skuTextController4?.dispose();

    skuFocusNode5?.dispose();
    skuTextController5?.dispose();

    isbnFocusNode?.dispose();
    isbnTextController?.dispose();

    mpnFocusNode?.dispose();
    mpnTextController?.dispose();

    eanFocusNode?.dispose();
    eanTextController?.dispose();

    upcFocusNode?.dispose();
    upcTextController?.dispose();

    materialFocusNode?.dispose();
    materialTextController?.dispose();

    manufactFocusNode?.dispose();
    manufactTextController?.dispose();

    brandFocusNode?.dispose();
    brandTextController?.dispose();

    unitFocusNode1?.dispose();
    unitTextController1?.dispose();

    unitFocusNode2?.dispose();
    unitTextController2?.dispose();

    unitFocusNode3?.dispose();
    unitTextController3?.dispose();

    descFocusNode?.dispose();
    descTextController?.dispose();

    skuFocusNode6?.dispose();
    skuTextController6?.dispose();
  }
}
