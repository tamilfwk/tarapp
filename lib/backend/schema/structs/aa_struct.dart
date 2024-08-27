// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AaStruct extends BaseStruct {
  AaStruct({
    int? id,
    String? created,
    String? name,
    String? email,
    String? phone,
    String? uuid,
    String? username,
    String? image,
    String? status,
    String? desc,
    String? aa,
    String? xt,
    String? ig,
    String? fb,
    String? pi,
    String? th,
    String? li,
    String? wa,
    String? sc,
    String? rt,
    String? tg,
    String? sf,
    String? dd,
    String? rd,
    String? ch,
  })  : _id = id,
        _created = created,
        _name = name,
        _email = email,
        _phone = phone,
        _uuid = uuid,
        _username = username,
        _image = image,
        _status = status,
        _desc = desc,
        _aa = aa,
        _xt = xt,
        _ig = ig,
        _fb = fb,
        _pi = pi,
        _th = th,
        _li = li,
        _wa = wa,
        _sc = sc,
        _rt = rt,
        _tg = tg,
        _sf = sf,
        _dd = dd,
        _rd = rd,
        _ch = ch;

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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "aa" field.
  String? _aa;
  String get aa => _aa ?? '';
  set aa(String? val) => _aa = val;

  bool hasAa() => _aa != null;

  // "xt" field.
  String? _xt;
  String get xt => _xt ?? '';
  set xt(String? val) => _xt = val;

  bool hasXt() => _xt != null;

  // "ig" field.
  String? _ig;
  String get ig => _ig ?? '';
  set ig(String? val) => _ig = val;

  bool hasIg() => _ig != null;

  // "fb" field.
  String? _fb;
  String get fb => _fb ?? '';
  set fb(String? val) => _fb = val;

  bool hasFb() => _fb != null;

  // "pi" field.
  String? _pi;
  String get pi => _pi ?? '';
  set pi(String? val) => _pi = val;

  bool hasPi() => _pi != null;

  // "th" field.
  String? _th;
  String get th => _th ?? '';
  set th(String? val) => _th = val;

  bool hasTh() => _th != null;

  // "li" field.
  String? _li;
  String get li => _li ?? '';
  set li(String? val) => _li = val;

  bool hasLi() => _li != null;

  // "wa" field.
  String? _wa;
  String get wa => _wa ?? '';
  set wa(String? val) => _wa = val;

  bool hasWa() => _wa != null;

  // "sc" field.
  String? _sc;
  String get sc => _sc ?? '';
  set sc(String? val) => _sc = val;

  bool hasSc() => _sc != null;

  // "rt" field.
  String? _rt;
  String get rt => _rt ?? '';
  set rt(String? val) => _rt = val;

  bool hasRt() => _rt != null;

  // "tg" field.
  String? _tg;
  String get tg => _tg ?? '';
  set tg(String? val) => _tg = val;

  bool hasTg() => _tg != null;

  // "sf" field.
  String? _sf;
  String get sf => _sf ?? '';
  set sf(String? val) => _sf = val;

  bool hasSf() => _sf != null;

  // "dd" field.
  String? _dd;
  String get dd => _dd ?? '';
  set dd(String? val) => _dd = val;

  bool hasDd() => _dd != null;

  // "rd" field.
  String? _rd;
  String get rd => _rd ?? '';
  set rd(String? val) => _rd = val;

  bool hasRd() => _rd != null;

  // "ch" field.
  String? _ch;
  String get ch => _ch ?? '';
  set ch(String? val) => _ch = val;

  bool hasCh() => _ch != null;

  static AaStruct fromMap(Map<String, dynamic> data) => AaStruct(
        id: castToType<int>(data['id']),
        created: data['created'] as String?,
        name: data['name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        uuid: data['uuid'] as String?,
        username: data['username'] as String?,
        image: data['image'] as String?,
        status: data['status'] as String?,
        desc: data['desc'] as String?,
        aa: data['aa'] as String?,
        xt: data['xt'] as String?,
        ig: data['ig'] as String?,
        fb: data['fb'] as String?,
        pi: data['pi'] as String?,
        th: data['th'] as String?,
        li: data['li'] as String?,
        wa: data['wa'] as String?,
        sc: data['sc'] as String?,
        rt: data['rt'] as String?,
        tg: data['tg'] as String?,
        sf: data['sf'] as String?,
        dd: data['dd'] as String?,
        rd: data['rd'] as String?,
        ch: data['ch'] as String?,
      );

  static AaStruct? maybeFromMap(dynamic data) =>
      data is Map ? AaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'name': _name,
        'email': _email,
        'phone': _phone,
        'uuid': _uuid,
        'username': _username,
        'image': _image,
        'status': _status,
        'desc': _desc,
        'aa': _aa,
        'xt': _xt,
        'ig': _ig,
        'fb': _fb,
        'pi': _pi,
        'th': _th,
        'li': _li,
        'wa': _wa,
        'sc': _sc,
        'rt': _rt,
        'tg': _tg,
        'sf': _sf,
        'dd': _dd,
        'rd': _rd,
        'ch': _ch,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'aa': serializeParam(
          _aa,
          ParamType.String,
        ),
        'xt': serializeParam(
          _xt,
          ParamType.String,
        ),
        'ig': serializeParam(
          _ig,
          ParamType.String,
        ),
        'fb': serializeParam(
          _fb,
          ParamType.String,
        ),
        'pi': serializeParam(
          _pi,
          ParamType.String,
        ),
        'th': serializeParam(
          _th,
          ParamType.String,
        ),
        'li': serializeParam(
          _li,
          ParamType.String,
        ),
        'wa': serializeParam(
          _wa,
          ParamType.String,
        ),
        'sc': serializeParam(
          _sc,
          ParamType.String,
        ),
        'rt': serializeParam(
          _rt,
          ParamType.String,
        ),
        'tg': serializeParam(
          _tg,
          ParamType.String,
        ),
        'sf': serializeParam(
          _sf,
          ParamType.String,
        ),
        'dd': serializeParam(
          _dd,
          ParamType.String,
        ),
        'rd': serializeParam(
          _rd,
          ParamType.String,
        ),
        'ch': serializeParam(
          _ch,
          ParamType.String,
        ),
      }.withoutNulls;

  static AaStruct fromSerializableMap(Map<String, dynamic> data) => AaStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        aa: deserializeParam(
          data['aa'],
          ParamType.String,
          false,
        ),
        xt: deserializeParam(
          data['xt'],
          ParamType.String,
          false,
        ),
        ig: deserializeParam(
          data['ig'],
          ParamType.String,
          false,
        ),
        fb: deserializeParam(
          data['fb'],
          ParamType.String,
          false,
        ),
        pi: deserializeParam(
          data['pi'],
          ParamType.String,
          false,
        ),
        th: deserializeParam(
          data['th'],
          ParamType.String,
          false,
        ),
        li: deserializeParam(
          data['li'],
          ParamType.String,
          false,
        ),
        wa: deserializeParam(
          data['wa'],
          ParamType.String,
          false,
        ),
        sc: deserializeParam(
          data['sc'],
          ParamType.String,
          false,
        ),
        rt: deserializeParam(
          data['rt'],
          ParamType.String,
          false,
        ),
        tg: deserializeParam(
          data['tg'],
          ParamType.String,
          false,
        ),
        sf: deserializeParam(
          data['sf'],
          ParamType.String,
          false,
        ),
        dd: deserializeParam(
          data['dd'],
          ParamType.String,
          false,
        ),
        rd: deserializeParam(
          data['rd'],
          ParamType.String,
          false,
        ),
        ch: deserializeParam(
          data['ch'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AaStruct &&
        id == other.id &&
        created == other.created &&
        name == other.name &&
        email == other.email &&
        phone == other.phone &&
        uuid == other.uuid &&
        username == other.username &&
        image == other.image &&
        status == other.status &&
        desc == other.desc &&
        aa == other.aa &&
        xt == other.xt &&
        ig == other.ig &&
        fb == other.fb &&
        pi == other.pi &&
        th == other.th &&
        li == other.li &&
        wa == other.wa &&
        sc == other.sc &&
        rt == other.rt &&
        tg == other.tg &&
        sf == other.sf &&
        dd == other.dd &&
        rd == other.rd &&
        ch == other.ch;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        name,
        email,
        phone,
        uuid,
        username,
        image,
        status,
        desc,
        aa,
        xt,
        ig,
        fb,
        pi,
        th,
        li,
        wa,
        sc,
        rt,
        tg,
        sf,
        dd,
        rd,
        ch
      ]);
}

AaStruct createAaStruct({
  int? id,
  String? created,
  String? name,
  String? email,
  String? phone,
  String? uuid,
  String? username,
  String? image,
  String? status,
  String? desc,
  String? aa,
  String? xt,
  String? ig,
  String? fb,
  String? pi,
  String? th,
  String? li,
  String? wa,
  String? sc,
  String? rt,
  String? tg,
  String? sf,
  String? dd,
  String? rd,
  String? ch,
}) =>
    AaStruct(
      id: id,
      created: created,
      name: name,
      email: email,
      phone: phone,
      uuid: uuid,
      username: username,
      image: image,
      status: status,
      desc: desc,
      aa: aa,
      xt: xt,
      ig: ig,
      fb: fb,
      pi: pi,
      th: th,
      li: li,
      wa: wa,
      sc: sc,
      rt: rt,
      tg: tg,
      sf: sf,
      dd: dd,
      rd: rd,
      ch: ch,
    );
