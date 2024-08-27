// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseStruct extends BaseStruct {
  ResponseStruct({
    String? type,
    ResultStruct? result,
  })  : _type = type,
        _result = result;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "result" field.
  ResultStruct? _result;
  ResultStruct get result => _result ?? ResultStruct();
  set result(ResultStruct? val) => _result = val;

  void updateResult(Function(ResultStruct) updateFn) {
    updateFn(_result ??= ResultStruct());
  }

  bool hasResult() => _result != null;

  static ResponseStruct fromMap(Map<String, dynamic> data) => ResponseStruct(
        type: data['type'] as String?,
        result: ResultStruct.maybeFromMap(data['result']),
      );

  static ResponseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResponseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'result': _result?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        result: deserializeStructParam(
          data['result'],
          ParamType.DataStruct,
          false,
          structBuilder: ResultStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseStruct &&
        type == other.type &&
        result == other.result;
  }

  @override
  int get hashCode => const ListEquality().hash([type, result]);
}

ResponseStruct createResponseStruct({
  String? type,
  ResultStruct? result,
}) =>
    ResponseStruct(
      type: type,
      result: result ?? ResultStruct(),
    );
