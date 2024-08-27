// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColsStruct extends BaseStruct {
  ColsStruct({
    String? name,
    String? decltype,
  })  : _name = name,
        _decltype = decltype;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "decltype" field.
  String? _decltype;
  String get decltype => _decltype ?? '';
  set decltype(String? val) => _decltype = val;

  bool hasDecltype() => _decltype != null;

  static ColsStruct fromMap(Map<String, dynamic> data) => ColsStruct(
        name: data['name'] as String?,
        decltype: data['decltype'] as String?,
      );

  static ColsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ColsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'decltype': _decltype,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'decltype': serializeParam(
          _decltype,
          ParamType.String,
        ),
      }.withoutNulls;

  static ColsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        decltype: deserializeParam(
          data['decltype'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ColsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColsStruct &&
        name == other.name &&
        decltype == other.decltype;
  }

  @override
  int get hashCode => const ListEquality().hash([name, decltype]);
}

ColsStruct createColsStruct({
  String? name,
  String? decltype,
}) =>
    ColsStruct(
      name: name,
      decltype: decltype,
    );
