import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'texts_widget.dart' show TextsWidget;
import 'package:flutter/material.dart';

class TextsModel extends FlutterFlowModel<TextsWidget> {
  ///  Local state fields for this page.

  String? item;

  List<String> aa = [];
  void addToAa(String item) => aa.add(item);
  void removeFromAa(String item) => aa.remove(item);
  void removeAtIndexFromAa(int index) => aa.removeAt(index);
  void insertAtIndexInAa(int index, String item) => aa.insert(index, item);
  void updateAaAtIndex(int index, Function(String) updateFn) =>
      aa[index] = updateFn(aa[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<List<TextsRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
