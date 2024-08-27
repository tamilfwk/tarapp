// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsStruct extends BaseStruct {
  ResultsStruct({
    String? type,
    ResponseStruct? response,
  })  : _type = type,
        _response = response;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "response" field.
  ResponseStruct? _response;
  ResponseStruct get response => _response ?? ResponseStruct();
  set response(ResponseStruct? val) => _response = val;

  void updateResponse(Function(ResponseStruct) updateFn) {
    updateFn(_response ??= ResponseStruct());
  }

  bool hasResponse() => _response != null;

  static ResultsStruct fromMap(Map<String, dynamic> data) => ResultsStruct(
        type: data['type'] as String?,
        response: ResponseStruct.maybeFromMap(data['response']),
      );

  static ResultsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'response': _response?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'response': serializeParam(
          _response,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultsStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        response: deserializeStructParam(
          data['response'],
          ParamType.DataStruct,
          false,
          structBuilder: ResponseStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultsStruct &&
        type == other.type &&
        response == other.response;
  }

  @override
  int get hashCode => const ListEquality().hash([type, response]);
}

ResultsStruct createResultsStruct({
  String? type,
  ResponseStruct? response,
}) =>
    ResultsStruct(
      type: type,
      response: response ?? ResponseStruct(),
    );
