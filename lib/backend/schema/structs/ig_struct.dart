// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IgStruct extends BaseStruct {
  IgStruct({
    int? id,
    String? created,
    String? name,
    String? description,
    int? parentid,
    int? tarid,
    String? sync,
    String? status,
    String? tags,
    String? analytics,
  })  : _id = id,
        _created = created,
        _name = name,
        _description = description,
        _parentid = parentid,
        _tarid = tarid,
        _sync = sync,
        _status = status,
        _tags = tags,
        _analytics = analytics;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;

  bool hasCreated() => _created != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "parentid" field.
  int? _parentid;
  int get parentid => _parentid ?? 0;
  set parentid(int? val) => _parentid = val;

  void incrementParentid(int amount) => parentid = parentid + amount;

  bool hasParentid() => _parentid != null;

  // "tarid" field.
  int? _tarid;
  int get tarid => _tarid ?? 0;
  set tarid(int? val) => _tarid = val;

  void incrementTarid(int amount) => tarid = tarid + amount;

  bool hasTarid() => _tarid != null;

  // "sync" field.
  String? _sync;
  String get sync => _sync ?? '';
  set sync(String? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  set tags(String? val) => _tags = val;

  bool hasTags() => _tags != null;

  // "analytics" field.
  String? _analytics;
  String get analytics => _analytics ?? '';
  set analytics(String? val) => _analytics = val;

  bool hasAnalytics() => _analytics != null;

  static IgStruct fromMap(Map<String, dynamic> data) => IgStruct(
        id: castToType<int>(data['id']),
        created: data['created'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        parentid: castToType<int>(data['parentid']),
        tarid: castToType<int>(data['tarid']),
        sync: data['sync'] as String?,
        status: data['status'] as String?,
        tags: data['tags'] as String?,
        analytics: data['analytics'] as String?,
      );

  static IgStruct? maybeFromMap(dynamic data) =>
      data is Map ? IgStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'name': _name,
        'description': _description,
        'parentid': _parentid,
        'tarid': _tarid,
        'sync': _sync,
        'status': _status,
        'tags': _tags,
        'analytics': _analytics,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'parentid': serializeParam(
          _parentid,
          ParamType.int,
        ),
        'tarid': serializeParam(
          _tarid,
          ParamType.int,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
        ),
        'analytics': serializeParam(
          _analytics,
          ParamType.String,
        ),
      }.withoutNulls;

  static IgStruct fromSerializableMap(Map<String, dynamic> data) => IgStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        parentid: deserializeParam(
          data['parentid'],
          ParamType.int,
          false,
        ),
        tarid: deserializeParam(
          data['tarid'],
          ParamType.int,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam(
          data['tags'],
          ParamType.String,
          false,
        ),
        analytics: deserializeParam(
          data['analytics'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IgStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IgStruct &&
        id == other.id &&
        created == other.created &&
        name == other.name &&
        description == other.description &&
        parentid == other.parentid &&
        tarid == other.tarid &&
        sync == other.sync &&
        status == other.status &&
        tags == other.tags &&
        analytics == other.analytics;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        name,
        description,
        parentid,
        tarid,
        sync,
        status,
        tags,
        analytics
      ]);
}

IgStruct createIgStruct({
  int? id,
  String? created,
  String? name,
  String? description,
  int? parentid,
  int? tarid,
  String? sync,
  String? status,
  String? tags,
  String? analytics,
}) =>
    IgStruct(
      id: id,
      created: created,
      name: name,
      description: description,
      parentid: parentid,
      tarid: tarid,
      sync: sync,
      status: status,
      tags: tags,
      analytics: analytics,
    );
