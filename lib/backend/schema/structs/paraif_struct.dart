// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParaifStruct extends BaseStruct {
  ParaifStruct({
    int? id,
    String? tarid,
    String? title,
    String? currentdb,
    String? siteid,
    String? email,
    int? posts,
  })  : _id = id,
        _tarid = tarid,
        _title = title,
        _currentdb = currentdb,
        _siteid = siteid,
        _email = email,
        _posts = posts;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "tarid" field.
  String? _tarid;
  String get tarid => _tarid ?? '';
  set tarid(String? val) => _tarid = val;

  bool hasTarid() => _tarid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "currentdb" field.
  String? _currentdb;
  String get currentdb => _currentdb ?? '';
  set currentdb(String? val) => _currentdb = val;

  bool hasCurrentdb() => _currentdb != null;

  // "siteid" field.
  String? _siteid;
  String get siteid => _siteid ?? '';
  set siteid(String? val) => _siteid = val;

  bool hasSiteid() => _siteid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "posts" field.
  int? _posts;
  int get posts => _posts ?? 0;
  set posts(int? val) => _posts = val;

  void incrementPosts(int amount) => posts = posts + amount;

  bool hasPosts() => _posts != null;

  static ParaifStruct fromMap(Map<String, dynamic> data) => ParaifStruct(
        id: castToType<int>(data['id']),
        tarid: data['tarid'] as String?,
        title: data['title'] as String?,
        currentdb: data['currentdb'] as String?,
        siteid: data['siteid'] as String?,
        email: data['email'] as String?,
        posts: castToType<int>(data['posts']),
      );

  static ParaifStruct? maybeFromMap(dynamic data) =>
      data is Map ? ParaifStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'tarid': _tarid,
        'title': _title,
        'currentdb': _currentdb,
        'siteid': _siteid,
        'email': _email,
        'posts': _posts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'tarid': serializeParam(
          _tarid,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'currentdb': serializeParam(
          _currentdb,
          ParamType.String,
        ),
        'siteid': serializeParam(
          _siteid,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'posts': serializeParam(
          _posts,
          ParamType.int,
        ),
      }.withoutNulls;

  static ParaifStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParaifStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        tarid: deserializeParam(
          data['tarid'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        currentdb: deserializeParam(
          data['currentdb'],
          ParamType.String,
          false,
        ),
        siteid: deserializeParam(
          data['siteid'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        posts: deserializeParam(
          data['posts'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ParaifStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParaifStruct &&
        id == other.id &&
        tarid == other.tarid &&
        title == other.title &&
        currentdb == other.currentdb &&
        siteid == other.siteid &&
        email == other.email &&
        posts == other.posts;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, tarid, title, currentdb, siteid, email, posts]);
}

ParaifStruct createParaifStruct({
  int? id,
  String? tarid,
  String? title,
  String? currentdb,
  String? siteid,
  String? email,
  int? posts,
}) =>
    ParaifStruct(
      id: id,
      tarid: tarid,
      title: title,
      currentdb: currentdb,
      siteid: siteid,
      email: email,
      posts: posts,
    );
