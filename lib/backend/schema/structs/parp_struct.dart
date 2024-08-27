// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParpStruct extends BaseStruct {
  ParpStruct({
    int? id,
    String? createdAt,
    String? collection,
    String? title,
    String? pageId,
    String? content,
    String? date,
    String? tags,
    String? author,
    String? status,
    String? synctime,
    int? views,
  })  : _id = id,
        _createdAt = createdAt,
        _collection = collection,
        _title = title,
        _pageId = pageId,
        _content = content,
        _date = date,
        _tags = tags,
        _author = author,
        _status = status,
        _synctime = synctime,
        _views = views;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "collection" field.
  String? _collection;
  String get collection => _collection ?? '';
  set collection(String? val) => _collection = val;

  bool hasCollection() => _collection != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "page_id" field.
  String? _pageId;
  String get pageId => _pageId ?? '';
  set pageId(String? val) => _pageId = val;

  bool hasPageId() => _pageId != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  set tags(String? val) => _tags = val;

  bool hasTags() => _tags != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  set author(String? val) => _author = val;

  bool hasAuthor() => _author != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "synctime" field.
  String? _synctime;
  String get synctime => _synctime ?? '';
  set synctime(String? val) => _synctime = val;

  bool hasSynctime() => _synctime != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  set views(int? val) => _views = val;

  void incrementViews(int amount) => views = views + amount;

  bool hasViews() => _views != null;

  static ParpStruct fromMap(Map<String, dynamic> data) => ParpStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        collection: data['collection'] as String?,
        title: data['title'] as String?,
        pageId: data['page_id'] as String?,
        content: data['content'] as String?,
        date: data['date'] as String?,
        tags: data['tags'] as String?,
        author: data['author'] as String?,
        status: data['status'] as String?,
        synctime: data['synctime'] as String?,
        views: castToType<int>(data['views']),
      );

  static ParpStruct? maybeFromMap(dynamic data) =>
      data is Map ? ParpStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'collection': _collection,
        'title': _title,
        'page_id': _pageId,
        'content': _content,
        'date': _date,
        'tags': _tags,
        'author': _author,
        'status': _status,
        'synctime': _synctime,
        'views': _views,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'collection': serializeParam(
          _collection,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'page_id': serializeParam(
          _pageId,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
        ),
        'author': serializeParam(
          _author,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'synctime': serializeParam(
          _synctime,
          ParamType.String,
        ),
        'views': serializeParam(
          _views,
          ParamType.int,
        ),
      }.withoutNulls;

  static ParpStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParpStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        collection: deserializeParam(
          data['collection'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        pageId: deserializeParam(
          data['page_id'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam(
          data['tags'],
          ParamType.String,
          false,
        ),
        author: deserializeParam(
          data['author'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        synctime: deserializeParam(
          data['synctime'],
          ParamType.String,
          false,
        ),
        views: deserializeParam(
          data['views'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ParpStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParpStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        collection == other.collection &&
        title == other.title &&
        pageId == other.pageId &&
        content == other.content &&
        date == other.date &&
        tags == other.tags &&
        author == other.author &&
        status == other.status &&
        synctime == other.synctime &&
        views == other.views;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        collection,
        title,
        pageId,
        content,
        date,
        tags,
        author,
        status,
        synctime,
        views
      ]);
}

ParpStruct createParpStruct({
  int? id,
  String? createdAt,
  String? collection,
  String? title,
  String? pageId,
  String? content,
  String? date,
  String? tags,
  String? author,
  String? status,
  String? synctime,
  int? views,
}) =>
    ParpStruct(
      id: id,
      createdAt: createdAt,
      collection: collection,
      title: title,
      pageId: pageId,
      content: content,
      date: date,
      tags: tags,
      author: author,
      status: status,
      synctime: synctime,
      views: views,
    );
