// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParStruct extends BaseStruct {
  ParStruct({
    int? id,
    String? name,
    String? type,
    int? fsize,
    String? uploaded,
    String? filedata,
    String? filepath,
    String? descr,
    int? tarid,
    String? par,
    int? views,
    String? status,
    String? tags,
    String? sync,
    String? thumbnail,
    String? analytics,
  })  : _id = id,
        _name = name,
        _type = type,
        _fsize = fsize,
        _uploaded = uploaded,
        _filedata = filedata,
        _filepath = filepath,
        _descr = descr,
        _tarid = tarid,
        _par = par,
        _views = views,
        _status = status,
        _tags = tags,
        _sync = sync,
        _thumbnail = thumbnail,
        _analytics = analytics;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "fsize" field.
  int? _fsize;
  int get fsize => _fsize ?? 0;
  set fsize(int? val) => _fsize = val;

  void incrementFsize(int amount) => fsize = fsize + amount;

  bool hasFsize() => _fsize != null;

  // "uploaded" field.
  String? _uploaded;
  String get uploaded => _uploaded ?? '';
  set uploaded(String? val) => _uploaded = val;

  bool hasUploaded() => _uploaded != null;

  // "filedata" field.
  String? _filedata;
  String get filedata => _filedata ?? '';
  set filedata(String? val) => _filedata = val;

  bool hasFiledata() => _filedata != null;

  // "filepath" field.
  String? _filepath;
  String get filepath => _filepath ?? '';
  set filepath(String? val) => _filepath = val;

  bool hasFilepath() => _filepath != null;

  // "descr" field.
  String? _descr;
  String get descr => _descr ?? '';
  set descr(String? val) => _descr = val;

  bool hasDescr() => _descr != null;

  // "tarid" field.
  int? _tarid;
  int get tarid => _tarid ?? 0;
  set tarid(int? val) => _tarid = val;

  void incrementTarid(int amount) => tarid = tarid + amount;

  bool hasTarid() => _tarid != null;

  // "par" field.
  String? _par;
  String get par => _par ?? '';
  set par(String? val) => _par = val;

  bool hasPar() => _par != null;

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  set views(int? val) => _views = val;

  void incrementViews(int amount) => views = views + amount;

  bool hasViews() => _views != null;

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

  // "sync" field.
  String? _sync;
  String get sync => _sync ?? '';
  set sync(String? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  set thumbnail(String? val) => _thumbnail = val;

  bool hasThumbnail() => _thumbnail != null;

  // "analytics" field.
  String? _analytics;
  String get analytics => _analytics ?? '';
  set analytics(String? val) => _analytics = val;

  bool hasAnalytics() => _analytics != null;

  static ParStruct fromMap(Map<String, dynamic> data) => ParStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        type: data['type'] as String?,
        fsize: castToType<int>(data['fsize']),
        uploaded: data['uploaded'] as String?,
        filedata: data['filedata'] as String?,
        filepath: data['filepath'] as String?,
        descr: data['descr'] as String?,
        tarid: castToType<int>(data['tarid']),
        par: data['par'] as String?,
        views: castToType<int>(data['views']),
        status: data['status'] as String?,
        tags: data['tags'] as String?,
        sync: data['sync'] as String?,
        thumbnail: data['thumbnail'] as String?,
        analytics: data['analytics'] as String?,
      );

  static ParStruct? maybeFromMap(dynamic data) =>
      data is Map ? ParStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'type': _type,
        'fsize': _fsize,
        'uploaded': _uploaded,
        'filedata': _filedata,
        'filepath': _filepath,
        'descr': _descr,
        'tarid': _tarid,
        'par': _par,
        'views': _views,
        'status': _status,
        'tags': _tags,
        'sync': _sync,
        'thumbnail': _thumbnail,
        'analytics': _analytics,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'fsize': serializeParam(
          _fsize,
          ParamType.int,
        ),
        'uploaded': serializeParam(
          _uploaded,
          ParamType.String,
        ),
        'filedata': serializeParam(
          _filedata,
          ParamType.String,
        ),
        'filepath': serializeParam(
          _filepath,
          ParamType.String,
        ),
        'descr': serializeParam(
          _descr,
          ParamType.String,
        ),
        'tarid': serializeParam(
          _tarid,
          ParamType.int,
        ),
        'par': serializeParam(
          _par,
          ParamType.String,
        ),
        'views': serializeParam(
          _views,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.String,
        ),
        'thumbnail': serializeParam(
          _thumbnail,
          ParamType.String,
        ),
        'analytics': serializeParam(
          _analytics,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParStruct fromSerializableMap(Map<String, dynamic> data) => ParStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        fsize: deserializeParam(
          data['fsize'],
          ParamType.int,
          false,
        ),
        uploaded: deserializeParam(
          data['uploaded'],
          ParamType.String,
          false,
        ),
        filedata: deserializeParam(
          data['filedata'],
          ParamType.String,
          false,
        ),
        filepath: deserializeParam(
          data['filepath'],
          ParamType.String,
          false,
        ),
        descr: deserializeParam(
          data['descr'],
          ParamType.String,
          false,
        ),
        tarid: deserializeParam(
          data['tarid'],
          ParamType.int,
          false,
        ),
        par: deserializeParam(
          data['par'],
          ParamType.String,
          false,
        ),
        views: deserializeParam(
          data['views'],
          ParamType.int,
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
        sync: deserializeParam(
          data['sync'],
          ParamType.String,
          false,
        ),
        thumbnail: deserializeParam(
          data['thumbnail'],
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
  String toString() => 'ParStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParStruct &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        fsize == other.fsize &&
        uploaded == other.uploaded &&
        filedata == other.filedata &&
        filepath == other.filepath &&
        descr == other.descr &&
        tarid == other.tarid &&
        par == other.par &&
        views == other.views &&
        status == other.status &&
        tags == other.tags &&
        sync == other.sync &&
        thumbnail == other.thumbnail &&
        analytics == other.analytics;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        type,
        fsize,
        uploaded,
        filedata,
        filepath,
        descr,
        tarid,
        par,
        views,
        status,
        tags,
        sync,
        thumbnail,
        analytics
      ]);
}

ParStruct createParStruct({
  int? id,
  String? name,
  String? type,
  int? fsize,
  String? uploaded,
  String? filedata,
  String? filepath,
  String? descr,
  int? tarid,
  String? par,
  int? views,
  String? status,
  String? tags,
  String? sync,
  String? thumbnail,
  String? analytics,
}) =>
    ParStruct(
      id: id,
      name: name,
      type: type,
      fsize: fsize,
      uploaded: uploaded,
      filedata: filedata,
      filepath: filepath,
      descr: descr,
      tarid: tarid,
      par: par,
      views: views,
      status: status,
      tags: tags,
      sync: sync,
      thumbnail: thumbnail,
      analytics: analytics,
    );
