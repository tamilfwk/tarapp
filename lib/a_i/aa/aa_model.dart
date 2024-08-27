import '/flutter_flow/flutter_flow_util.dart';
import 'aa_widget.dart' show AaWidget;
import 'package:flutter/material.dart';

class AaModel extends FlutterFlowModel<AaWidget> {
  ///  Local state fields for this page.

  int? type;

  int? socials = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
