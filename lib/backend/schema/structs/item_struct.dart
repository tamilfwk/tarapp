// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemStruct extends BaseStruct {
  ItemStruct({
    int? id,
    String? created,
    int? tarid,
    String? name,
    String? category,
    String? type,
    String? sku,
    String? unit,
    double? stock,
    String? location,
    double? cprice,
    double? sprice,
    String? menu,
    String? sync,
    String? primaryimg,
    String? desc,
    String? group,
    int? groupid,
    String? imgs,
    double? reorder,
    String? dimen,
    double? weight,
    String? color,
    String? material,
    String? manufacturer,
    String? brand,
    String? upc,
    String? isbn,
    String? mpn,
    String? ean,
    String? imglist,
    String? vendor,
    int? shelflife,
  })  : _id = id,
        _created = created,
        _tarid = tarid,
        _name = name,
        _category = category,
        _type = type,
        _sku = sku,
        _unit = unit,
        _stock = stock,
        _location = location,
        _cprice = cprice,
        _sprice = sprice,
        _menu = menu,
        _sync = sync,
        _primaryimg = primaryimg,
        _desc = desc,
        _group = group,
        _groupid = groupid,
        _imgs = imgs,
        _reorder = reorder,
        _dimen = dimen,
        _weight = weight,
        _color = color,
        _material = material,
        _manufacturer = manufacturer,
        _brand = brand,
        _upc = upc,
        _isbn = isbn,
        _mpn = mpn,
        _ean = ean,
        _imglist = imglist,
        _vendor = vendor,
        _shelflife = shelflife;

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

  // "tarid" field.
  int? _tarid;
  int get tarid => _tarid ?? 0;
  set tarid(int? val) => _tarid = val;

  void incrementTarid(int amount) => tarid = tarid + amount;

  bool hasTarid() => _tarid != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "stock" field.
  double? _stock;
  double get stock => _stock ?? 0.0;
  set stock(double? val) => _stock = val;

  void incrementStock(double amount) => stock = stock + amount;

  bool hasStock() => _stock != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "cprice" field.
  double? _cprice;
  double get cprice => _cprice ?? 0.0;
  set cprice(double? val) => _cprice = val;

  void incrementCprice(double amount) => cprice = cprice + amount;

  bool hasCprice() => _cprice != null;

  // "sprice" field.
  double? _sprice;
  double get sprice => _sprice ?? 0.0;
  set sprice(double? val) => _sprice = val;

  void incrementSprice(double amount) => sprice = sprice + amount;

  bool hasSprice() => _sprice != null;

  // "menu" field.
  String? _menu;
  String get menu => _menu ?? '';
  set menu(String? val) => _menu = val;

  bool hasMenu() => _menu != null;

  // "sync" field.
  String? _sync;
  String get sync => _sync ?? '';
  set sync(String? val) => _sync = val;

  bool hasSync() => _sync != null;

  // "primaryimg" field.
  String? _primaryimg;
  String get primaryimg => _primaryimg ?? '';
  set primaryimg(String? val) => _primaryimg = val;

  bool hasPrimaryimg() => _primaryimg != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;

  bool hasDesc() => _desc != null;

  // "group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "groupid" field.
  int? _groupid;
  int get groupid => _groupid ?? 0;
  set groupid(int? val) => _groupid = val;

  void incrementGroupid(int amount) => groupid = groupid + amount;

  bool hasGroupid() => _groupid != null;

  // "imgs" field.
  String? _imgs;
  String get imgs => _imgs ?? '';
  set imgs(String? val) => _imgs = val;

  bool hasImgs() => _imgs != null;

  // "reorder" field.
  double? _reorder;
  double get reorder => _reorder ?? 0.0;
  set reorder(double? val) => _reorder = val;

  void incrementReorder(double amount) => reorder = reorder + amount;

  bool hasReorder() => _reorder != null;

  // "dimen" field.
  String? _dimen;
  String get dimen => _dimen ?? '';
  set dimen(String? val) => _dimen = val;

  bool hasDimen() => _dimen != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;

  void incrementWeight(double amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  set color(String? val) => _color = val;

  bool hasColor() => _color != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  set material(String? val) => _material = val;

  bool hasMaterial() => _material != null;

  // "manufacturer" field.
  String? _manufacturer;
  String get manufacturer => _manufacturer ?? '';
  set manufacturer(String? val) => _manufacturer = val;

  bool hasManufacturer() => _manufacturer != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "upc" field.
  String? _upc;
  String get upc => _upc ?? '';
  set upc(String? val) => _upc = val;

  bool hasUpc() => _upc != null;

  // "isbn" field.
  String? _isbn;
  String get isbn => _isbn ?? '';
  set isbn(String? val) => _isbn = val;

  bool hasIsbn() => _isbn != null;

  // "mpn" field.
  String? _mpn;
  String get mpn => _mpn ?? '';
  set mpn(String? val) => _mpn = val;

  bool hasMpn() => _mpn != null;

  // "ean" field.
  String? _ean;
  String get ean => _ean ?? '';
  set ean(String? val) => _ean = val;

  bool hasEan() => _ean != null;

  // "imglist" field.
  String? _imglist;
  String get imglist => _imglist ?? '';
  set imglist(String? val) => _imglist = val;

  bool hasImglist() => _imglist != null;

  // "vendor" field.
  String? _vendor;
  String get vendor => _vendor ?? '';
  set vendor(String? val) => _vendor = val;

  bool hasVendor() => _vendor != null;

  // "shelflife" field.
  int? _shelflife;
  int get shelflife => _shelflife ?? 0;
  set shelflife(int? val) => _shelflife = val;

  void incrementShelflife(int amount) => shelflife = shelflife + amount;

  bool hasShelflife() => _shelflife != null;

  static ItemStruct fromMap(Map<String, dynamic> data) => ItemStruct(
        id: castToType<int>(data['id']),
        created: data['created'] as String?,
        tarid: castToType<int>(data['tarid']),
        name: data['name'] as String?,
        category: data['category'] as String?,
        type: data['type'] as String?,
        sku: data['sku'] as String?,
        unit: data['unit'] as String?,
        stock: castToType<double>(data['stock']),
        location: data['location'] as String?,
        cprice: castToType<double>(data['cprice']),
        sprice: castToType<double>(data['sprice']),
        menu: data['menu'] as String?,
        sync: data['sync'] as String?,
        primaryimg: data['primaryimg'] as String?,
        desc: data['desc'] as String?,
        group: data['group'] as String?,
        groupid: castToType<int>(data['groupid']),
        imgs: data['imgs'] as String?,
        reorder: castToType<double>(data['reorder']),
        dimen: data['dimen'] as String?,
        weight: castToType<double>(data['weight']),
        color: data['color'] as String?,
        material: data['material'] as String?,
        manufacturer: data['manufacturer'] as String?,
        brand: data['brand'] as String?,
        upc: data['upc'] as String?,
        isbn: data['isbn'] as String?,
        mpn: data['mpn'] as String?,
        ean: data['ean'] as String?,
        imglist: data['imglist'] as String?,
        vendor: data['vendor'] as String?,
        shelflife: castToType<int>(data['shelflife']),
      );

  static ItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'tarid': _tarid,
        'name': _name,
        'category': _category,
        'type': _type,
        'sku': _sku,
        'unit': _unit,
        'stock': _stock,
        'location': _location,
        'cprice': _cprice,
        'sprice': _sprice,
        'menu': _menu,
        'sync': _sync,
        'primaryimg': _primaryimg,
        'desc': _desc,
        'group': _group,
        'groupid': _groupid,
        'imgs': _imgs,
        'reorder': _reorder,
        'dimen': _dimen,
        'weight': _weight,
        'color': _color,
        'material': _material,
        'manufacturer': _manufacturer,
        'brand': _brand,
        'upc': _upc,
        'isbn': _isbn,
        'mpn': _mpn,
        'ean': _ean,
        'imglist': _imglist,
        'vendor': _vendor,
        'shelflife': _shelflife,
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
        'tarid': serializeParam(
          _tarid,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'stock': serializeParam(
          _stock,
          ParamType.double,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'cprice': serializeParam(
          _cprice,
          ParamType.double,
        ),
        'sprice': serializeParam(
          _sprice,
          ParamType.double,
        ),
        'menu': serializeParam(
          _menu,
          ParamType.String,
        ),
        'sync': serializeParam(
          _sync,
          ParamType.String,
        ),
        'primaryimg': serializeParam(
          _primaryimg,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'group': serializeParam(
          _group,
          ParamType.String,
        ),
        'groupid': serializeParam(
          _groupid,
          ParamType.int,
        ),
        'imgs': serializeParam(
          _imgs,
          ParamType.String,
        ),
        'reorder': serializeParam(
          _reorder,
          ParamType.double,
        ),
        'dimen': serializeParam(
          _dimen,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.double,
        ),
        'color': serializeParam(
          _color,
          ParamType.String,
        ),
        'material': serializeParam(
          _material,
          ParamType.String,
        ),
        'manufacturer': serializeParam(
          _manufacturer,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'upc': serializeParam(
          _upc,
          ParamType.String,
        ),
        'isbn': serializeParam(
          _isbn,
          ParamType.String,
        ),
        'mpn': serializeParam(
          _mpn,
          ParamType.String,
        ),
        'ean': serializeParam(
          _ean,
          ParamType.String,
        ),
        'imglist': serializeParam(
          _imglist,
          ParamType.String,
        ),
        'vendor': serializeParam(
          _vendor,
          ParamType.String,
        ),
        'shelflife': serializeParam(
          _shelflife,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemStruct(
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
        tarid: deserializeParam(
          data['tarid'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        stock: deserializeParam(
          data['stock'],
          ParamType.double,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        cprice: deserializeParam(
          data['cprice'],
          ParamType.double,
          false,
        ),
        sprice: deserializeParam(
          data['sprice'],
          ParamType.double,
          false,
        ),
        menu: deserializeParam(
          data['menu'],
          ParamType.String,
          false,
        ),
        sync: deserializeParam(
          data['sync'],
          ParamType.String,
          false,
        ),
        primaryimg: deserializeParam(
          data['primaryimg'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        group: deserializeParam(
          data['group'],
          ParamType.String,
          false,
        ),
        groupid: deserializeParam(
          data['groupid'],
          ParamType.int,
          false,
        ),
        imgs: deserializeParam(
          data['imgs'],
          ParamType.String,
          false,
        ),
        reorder: deserializeParam(
          data['reorder'],
          ParamType.double,
          false,
        ),
        dimen: deserializeParam(
          data['dimen'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.double,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.String,
          false,
        ),
        material: deserializeParam(
          data['material'],
          ParamType.String,
          false,
        ),
        manufacturer: deserializeParam(
          data['manufacturer'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        upc: deserializeParam(
          data['upc'],
          ParamType.String,
          false,
        ),
        isbn: deserializeParam(
          data['isbn'],
          ParamType.String,
          false,
        ),
        mpn: deserializeParam(
          data['mpn'],
          ParamType.String,
          false,
        ),
        ean: deserializeParam(
          data['ean'],
          ParamType.String,
          false,
        ),
        imglist: deserializeParam(
          data['imglist'],
          ParamType.String,
          false,
        ),
        vendor: deserializeParam(
          data['vendor'],
          ParamType.String,
          false,
        ),
        shelflife: deserializeParam(
          data['shelflife'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemStruct &&
        id == other.id &&
        created == other.created &&
        tarid == other.tarid &&
        name == other.name &&
        category == other.category &&
        type == other.type &&
        sku == other.sku &&
        unit == other.unit &&
        stock == other.stock &&
        location == other.location &&
        cprice == other.cprice &&
        sprice == other.sprice &&
        menu == other.menu &&
        sync == other.sync &&
        primaryimg == other.primaryimg &&
        desc == other.desc &&
        group == other.group &&
        groupid == other.groupid &&
        imgs == other.imgs &&
        reorder == other.reorder &&
        dimen == other.dimen &&
        weight == other.weight &&
        color == other.color &&
        material == other.material &&
        manufacturer == other.manufacturer &&
        brand == other.brand &&
        upc == other.upc &&
        isbn == other.isbn &&
        mpn == other.mpn &&
        ean == other.ean &&
        imglist == other.imglist &&
        vendor == other.vendor &&
        shelflife == other.shelflife;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        tarid,
        name,
        category,
        type,
        sku,
        unit,
        stock,
        location,
        cprice,
        sprice,
        menu,
        sync,
        primaryimg,
        desc,
        group,
        groupid,
        imgs,
        reorder,
        dimen,
        weight,
        color,
        material,
        manufacturer,
        brand,
        upc,
        isbn,
        mpn,
        ean,
        imglist,
        vendor,
        shelflife
      ]);
}

ItemStruct createItemStruct({
  int? id,
  String? created,
  int? tarid,
  String? name,
  String? category,
  String? type,
  String? sku,
  String? unit,
  double? stock,
  String? location,
  double? cprice,
  double? sprice,
  String? menu,
  String? sync,
  String? primaryimg,
  String? desc,
  String? group,
  int? groupid,
  String? imgs,
  double? reorder,
  String? dimen,
  double? weight,
  String? color,
  String? material,
  String? manufacturer,
  String? brand,
  String? upc,
  String? isbn,
  String? mpn,
  String? ean,
  String? imglist,
  String? vendor,
  int? shelflife,
}) =>
    ItemStruct(
      id: id,
      created: created,
      tarid: tarid,
      name: name,
      category: category,
      type: type,
      sku: sku,
      unit: unit,
      stock: stock,
      location: location,
      cprice: cprice,
      sprice: sprice,
      menu: menu,
      sync: sync,
      primaryimg: primaryimg,
      desc: desc,
      group: group,
      groupid: groupid,
      imgs: imgs,
      reorder: reorder,
      dimen: dimen,
      weight: weight,
      color: color,
      material: material,
      manufacturer: manufacturer,
      brand: brand,
      upc: upc,
      isbn: isbn,
      mpn: mpn,
      ean: ean,
      imglist: imglist,
      vendor: vendor,
      shelflife: shelflife,
    );
