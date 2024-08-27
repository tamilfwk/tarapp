// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AichatStruct extends BaseStruct {
  AichatStruct({
    String? ans,
  }) : _ans = ans;

  // "ans" field.
  String? _ans;
  String get ans => _ans ?? '';
  set ans(String? val) => _ans = val;

  bool hasAns() => _ans != null;

  static AichatStruct fromMap(Map<String, dynamic> data) => AichatStruct(
        ans: data['ans'] as String?,
      );

  static AichatStruct? maybeFromMap(dynamic data) =>
      data is Map ? AichatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ans': _ans,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ans': serializeParam(
          _ans,
          ParamType.String,
        ),
      }.withoutNulls;

  static AichatStruct fromSerializableMap(Map<String, dynamic> data) =>
      AichatStruct(
        ans: deserializeParam(
          data['ans'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AichatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AichatStruct && ans == other.ans;
  }

  @override
  int get hashCode => const ListEquality().hash([ans]);
}

AichatStruct createAichatStruct({
  String? ans,
}) =>
    AichatStruct(
      ans: ans,
    );
