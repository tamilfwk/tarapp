import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future search(BuildContext context) async {
  await SQLiteManager.instance.getItems(
    name: FFAppState().filter,
  );
}
