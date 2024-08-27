// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParfStruct extends BaseStruct {
  ParfStruct({
    String? id,
    String? title,
    String? currentdb,
    String? siteid,
    String? email,
    int? posts,
  })  : _id = id,
        _title = title,
        _currentdb = currentdb,
        _siteid = siteid,
        _email = email,
        _posts = posts;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  static ParfStruct fromMap(Map<String, dynamic> data) => ParfStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        currentdb: data['currentdb'] as String?,
        siteid: data['siteid'] as String?,
        email: data['email'] as String?,
        posts: castToType<int>(data['posts']),
      );

  static ParfStruct? maybeFromMap(dynamic data) =>
      data is Map ? ParfStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
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

  static ParfStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParfStruct(
        id: deserializeParam(
          data['id'],
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
  String toString() => 'ParfStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParfStruct &&
        id == other.id &&
        title == other.title &&
        currentdb == other.currentdb &&
        siteid == other.siteid &&
        email == other.email &&
        posts == other.posts;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, currentdb, siteid, email, posts]);
}

ParfStruct createParfStruct({
  String? id,
  String? title,
  String? currentdb,
  String? siteid,
  String? email,
  int? posts,
}) =>
    ParfStruct(
      id: id,
      title: title,
      currentdb: currentdb,
      siteid: siteid,
      email: email,
      posts: posts,
    );
