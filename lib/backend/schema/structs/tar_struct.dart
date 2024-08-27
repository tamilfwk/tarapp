// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarStruct extends BaseStruct {
  TarStruct({
    int? tarid,
    String? created,
    String? uuid,
    String? type,
    String? plan,
    int? size,
    String? title,
    String? thumbnail,
    String? link,
    String? desc,
    String? notes,
    String? secrets,
    String? notionid,
    int? views,
    String? analytics,
  })  : _tarid = tarid,
        _created = created,
        _uuid = uuid,
        _type = type,
        _plan = plan,
        _size = size,
        _title = title,
        _thumbnail = thumbnail,
        _link = link,
        _desc = desc,
        _notes = notes,
        _secrets = secrets,
        _notionid = notionid,
        _views = views,
        _analytics = analytics;

  // "tarid" field.
  int? _tarid;
  int get tarid => _tarid ?? 0;
  set tarid(int? val) => _tarid = val;

  void incrementTarid(int amount) => tarid = tarid + amount;

  bool hasTarid() => _tarid != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;

  bool hasCreated() => _created != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "plan" field.
  String? _plan;
  String get plan => _plan ?? '';
  set plan(String? val) => _plan = val;

  bool hasPlan() => _plan != null;

  // "size" field.
  int? _size;
  int get size => _size ?? 0;
  set size(int? val) => _size = val;

  void incrementSize(int amount) => size = size + amount;

  bool hasSize() => _size != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  set notes(String? val) => _notes = val;

  bool hasNotes() => _notes != null;

  // "secrets" field.
  String? _secrets;
  String get secrets => _secrets ?? '';
  set secrets(String? val) => _secrets = val;

  bool hasSecrets() => _secrets != null;

  // "notionid" field.
  String? _notionid;
  String get notionid => _notionid ?? '';
  set notionid(String? val) => _notionid = val;

  bool hasNotionid() => _notionid != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  set views(int? val) => _views = val;

  void incrementViews(int amount) => views = views + amount;

  bool hasViews() => _views != null;

  // "analytics" field.
  String? _analytics;
  String get analytics => _analytics ?? '';
  set analytics(String? val) => _analytics = val;

  bool hasAnalytics() => _analytics != null;

  static TarStruct fromMap(Map<String, dynamic> data) => TarStruct(
        tarid: castToType<int>(data['tarid']),
        created: data['created'] as String?,
        uuid: data['uuid'] as String?,
        type: data['type'] as String?,
        plan: data['plan'] as String?,
        size: castToType<int>(data['size']),
        title: data['title'] as String?,
        thumbnail: data['thumbnail'] as String?,
        link: data['link'] as String?,
        desc: data['desc'] as String?,
        notes: data['notes'] as String?,
        secrets: data['secrets'] as String?,
        notionid: data['notionid'] as String?,
        views: castToType<int>(data['views']),
        analytics: data['analytics'] as String?,
      );

  static TarStruct? maybeFromMap(dynamic data) =>
      data is Map ? TarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tarid': _tarid,
        'created': _created,
        'uuid': _uuid,
        'type': _type,
        'plan': _plan,
        'size': _size,
        'title': _title,
        'thumbnail': _thumbnail,
        'link': _link,
        'desc': _desc,
        'notes': _notes,
        'secrets': _secrets,
        'notionid': _notionid,
        'views': _views,
        'analytics': _analytics,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tarid': serializeParam(
          _tarid,
          ParamType.int,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'plan': serializeParam(
          _plan,
          ParamType.String,
        ),
        'size': serializeParam(
          _size,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.String,
        ),
        'secrets': serializeParam(
          _secrets,
          ParamType.String,
        ),
        'notionid': serializeParam(
          _notionid,
          ParamType.String,
        ),
        'views': serializeParam(
          _views,
          ParamType.int,
        ),
        'analytics': serializeParam(
          _analytics,
          ParamType.String,
        ),
      }.withoutNulls;

  static TarStruct fromSerializableMap(Map<String, dynamic> data) => TarStruct(
        tarid: deserializeParam(
          data['tarid'],
          ParamType.int,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        plan: deserializeParam(
          data['plan'],
          ParamType.String,
          false,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        notes: deserializeParam(
          data['notes'],
          ParamType.String,
          false,
        ),
        secrets: deserializeParam(
          data['secrets'],
          ParamType.String,
          false,
        ),
        notionid: deserializeParam(
          data['notionid'],
          ParamType.String,
          false,
        ),
        views: deserializeParam(
          data['views'],
          ParamType.int,
          false,
        ),
        analytics: deserializeParam(
          data['analytics'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TarStruct &&
        tarid == other.tarid &&
        created == other.created &&
        uuid == other.uuid &&
        type == other.type &&
        plan == other.plan &&
        size == other.size &&
        title == other.title &&
        thumbnail == other.thumbnail &&
        link == other.link &&
        desc == other.desc &&
        notes == other.notes &&
        secrets == other.secrets &&
        notionid == other.notionid &&
        views == other.views &&
        analytics == other.analytics;
  }

  @override
  int get hashCode => const ListEquality().hash([
        tarid,
        created,
        uuid,
        type,
        plan,
        size,
        title,
        thumbnail,
        link,
        desc,
        notes,
        secrets,
        notionid,
        views,
        analytics
      ]);
}

TarStruct createTarStruct({
  int? tarid,
  String? created,
  String? uuid,
  String? type,
  String? plan,
  int? size,
  String? title,
  String? thumbnail,
  String? link,
  String? desc,
  String? notes,
  String? secrets,
  String? notionid,
  int? views,
  String? analytics,
}) =>
    TarStruct(
      tarid: tarid,
      created: created,
      uuid: uuid,
      type: type,
      plan: plan,
      size: size,
      title: title,
      thumbnail: thumbnail,
      link: link,
      desc: desc,
      notes: notes,
      secrets: secrets,
      notionid: notionid,
      views: views,
      analytics: analytics,
    );
