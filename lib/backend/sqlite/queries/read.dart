import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETCARTITEM
Future<List<GetcartitemRow>> performGetcartitem(
  Database database, {
  int? itemid,
}) {
  final query = '''
SELECT * FROM Cart WHERE itemid = $itemid;
''';
  return _readQuery(database, query, (d) => GetcartitemRow(d));
}

class GetcartitemRow extends SqliteRow {
  GetcartitemRow(super.data);

  int? get qty => data['qty'] as int?;
  int? get price => data['price'] as int?;
  int? get total => data['total'] as int?;
}

/// END GETCARTITEM

/// BEGIN GETCART
Future<List<GetCartRow>> performGetCart(
  Database database,
) {
  const query = '''
SELECT * FROM Cart
''';
  return _readQuery(database, query, (d) => GetCartRow(d));
}

class GetCartRow extends SqliteRow {
  GetCartRow(super.data);

  int? get qty => data['qty'] as int?;
  int? get price => data['price'] as int?;
  int? get total => data['total'] as int?;
  String get item => data['item'] as String;
}

/// END GETCART

/// BEGIN GETCHATS
Future<List<GetChatsRow>> performGetChats(
  Database database,
) {
  const query = '''
SELECT * FROM chats
''';
  return _readQuery(database, query, (d) => GetChatsRow(d));
}

class GetChatsRow extends SqliteRow {
  GetChatsRow(super.data);

  String get a1 => data['a1'] as String;
  String get a2 => data['a2'] as String;
  String get a2id => data['a2id'] as String;
  String get a2img => data['a2img'] as String;
  String get type => data['type'] as String;
  String get lastmsg => data['lastmsg'] as String;
}

/// END GETCHATS

/// BEGIN ALLITEMS
Future<List<AllItemsRow>> performAllItems(
  Database database,
) {
  const query = '''
SELECT * FROM Items
''';
  return _readQuery(database, query, (d) => AllItemsRow(d));
}

class AllItemsRow extends SqliteRow {
  AllItemsRow(super.data);

  int get id => data['id'] as int;
  int? get storeid => data['storeid'] as int?;
  String? get name => data['name'] as String?;
  String? get category => data['category'] as String?;
  String? get type => data['type'] as String?;
  String? get sku => data['sku'] as String?;
  String? get unit => data['unit'] as String?;
  int? get stock => data['stock'] as int?;
  String? get location => data['location'] as String?;
  double? get cprice => data['cprice'] as double?;
  double? get sprice => data['sprice'] as double?;
  String? get menu => data['menu'] as String?;
  DateTime? get lastupdate => data['lastupdate'] as DateTime?;
  DateTime? get lastsync => data['lastsync'] as DateTime?;
  String? get primaryimg => data['primaryimg'] as String?;
  String? get desc => data['desc'] as String?;
  String? get grp => data['grp'] as String?;
  int? get reorder => data['reorder'] as int?;
  String? get dimen => data['dimen'] as String?;
  String? get weight => data['weight'] as String?;
  String? get color => data['color'] as String?;
  String? get material => data['material'] as String?;
  String? get manufacturer => data['manufacturer'] as String?;
  String? get brand => data['brand'] as String?;
  int? get upc => data['upc'] as int?;
  int? get isbn => data['isbn'] as int?;
  String? get mpn => data['mpn'] as String?;
  int? get ean => data['ean'] as int?;
  String? get imglist => data['imglist'] as String?;
}

/// END ALLITEMS

/// BEGIN GETA
Future<List<GetaRow>> performGeta(
  Database database, {
  String? uuid,
}) {
  final query = '''
SELECT * FROM a WHERE uuid = '$uuid';
''';
  return _readQuery(database, query, (d) => GetaRow(d));
}

class GetaRow extends SqliteRow {
  GetaRow(super.data);

  String? get name => data['name'] as String?;
  String? get email => data['email'] as String?;
  String? get phone => data['phone'] as String?;
  String? get uuid => data['uuid'] as String?;
  String? get username => data['username'] as String?;
  String? get image => data['image'] as String?;
  String? get status => data['status'] as String?;
  String? get desc => data['desc'] as String?;
}

/// END GETA

/// BEGIN GETPAR
Future<List<GetparRow>> performGetpar(
  Database database, {
  String? type,
}) {
  final query = '''
SELECT * FROM par WHERE type = '$type';
''';
  return _readQuery(database, query, (d) => GetparRow(d));
}

class GetparRow extends SqliteRow {
  GetparRow(super.data);

  int get id => data['id'] as int;
  String? get name => data['name'] as String?;
  String? get type => data['type'] as String?;
  int? get fsize => data['fsize'] as int?;
  String? get uploaded => data['uploaded'] as String?;
  String? get filedata => data['filedata'] as String?;
  String? get filepath => data['filepath'] as String?;
  String? get descr => data['descr'] as String?;
  int? get tarid => data['tarid'] as int?;
  String? get par => data['par'] as String?;
  int? get views => data['views'] as int?;
  String? get status => data['status'] as String?;
  String? get tags => data['tags'] as String?;
  String? get sync => data['sync'] as String?;
  String? get thumbnail => data['thumbnail'] as String?;
  String? get analytics => data['analytics'] as String?;
}

/// END GETPAR

/// BEGIN GETPARF
Future<List<GetparfRow>> performGetparf(
  Database database,
) {
  const query = '''
SELECT * FROM parf
''';
  return _readQuery(database, query, (d) => GetparfRow(d));
}

class GetparfRow extends SqliteRow {
  GetparfRow(super.data);

  String? get id => data['id'] as String?;
  String? get title => data['title'] as String?;
  String? get currentdb => data['currentdb'] as String?;
  String? get siteid => data['siteid'] as String?;
  String? get email => data['email'] as String?;
  int? get posts => data['posts'] as int?;
}

/// END GETPARF

/// BEGIN FINDITEMS
Future<List<FinditemsRow>> performFinditems(
  Database database, {
  String? name,
}) {
  final query = '''
SELECT * FROM Items WHERE name LIKE $name;
''';
  return _readQuery(database, query, (d) => FinditemsRow(d));
}

class FinditemsRow extends SqliteRow {
  FinditemsRow(super.data);

  int get id => data['id'] as int;
  int? get storeid => data['storeid'] as int?;
  String? get name => data['name'] as String?;
  String? get category => data['category'] as String?;
  String? get type => data['type'] as String?;
  String? get sku => data['sku'] as String?;
  String? get unit => data['unit'] as String?;
  int? get stock => data['stock'] as int?;
  String? get location => data['location'] as String?;
  double? get cprice => data['cprice'] as double?;
  double? get sprice => data['sprice'] as double?;
  String? get menu => data['menu'] as String?;
  DateTime? get lastupdate => data['lastupdate'] as DateTime?;
  DateTime? get lastsync => data['lastsync'] as DateTime?;
  String? get primaryimg => data['primaryimg'] as String?;
  String? get desc => data['desc'] as String?;
  String? get grp => data['grp'] as String?;
  int? get reorder => data['reorder'] as int?;
  String? get dimen => data['dimen'] as String?;
  String? get weight => data['weight'] as String?;
  String? get color => data['color'] as String?;
  String? get material => data['material'] as String?;
  String? get manufacturer => data['manufacturer'] as String?;
  String? get brand => data['brand'] as String?;
  int? get upc => data['upc'] as int?;
  int? get isbn => data['isbn'] as int?;
  String? get mpn => data['mpn'] as String?;
  int? get ean => data['ean'] as int?;
  String? get imglist => data['imglist'] as String?;
}

/// END FINDITEMS

/// BEGIN GETITEMS
Future<List<GetItemsRow>> performGetItems(
  Database database, {
  String? name,
}) {
  final query = '''
SELECT * FROM Items WHERE name LIKE '$name';
''';
  return _readQuery(database, query, (d) => GetItemsRow(d));
}

class GetItemsRow extends SqliteRow {
  GetItemsRow(super.data);

  int get id => data['id'] as int;
  int? get storeid => data['storeid'] as int?;
  String? get name => data['name'] as String?;
  String? get category => data['category'] as String?;
  String? get type => data['type'] as String?;
  String? get sku => data['sku'] as String?;
  String? get unit => data['unit'] as String?;
  double? get stock => data['stock'] as double?;
  String? get location => data['location'] as String?;
  double? get cprice => data['cprice'] as double?;
  double? get sprice => data['sprice'] as double?;
  String? get menu => data['menu'] as String?;
  String? get primaryimg => data['primaryimg'] as String?;
  String? get desc => data['desc'] as String?;
  String? get grp => data['grp'] as String?;
  double? get reorder => data['reorder'] as double?;
  String? get dimen => data['dimen'] as String?;
  double? get weight => data['weight'] as double?;
  String? get color => data['color'] as String?;
  String? get material => data['material'] as String?;
  String? get manufacturer => data['manufacturer'] as String?;
  String? get brand => data['brand'] as String?;
  String? get upc => data['upc'] as String?;
  String? get isbn => data['isbn'] as String?;
  String? get mpn => data['mpn'] as String?;
  String? get ean => data['ean'] as String?;
  String? get imglist => data['imglist'] as String?;
  String? get sync => data['sync'] as String?;
  String? get vendor => data['vendor'] as String?;
  int? get shelflife => data['shelflife'] as int?;
}

/// END GETITEMS

/// BEGIN GETIG
Future<List<GetigRow>> performGetig(
  Database database,
) {
  const query = '''
SELECT * FROM ig
''';
  return _readQuery(database, query, (d) => GetigRow(d));
}

class GetigRow extends SqliteRow {
  GetigRow(super.data);

  int? get id => data['id'] as int?;
  String? get name => data['name'] as String?;
  String? get description => data['description'] as String?;
  int? get parentid => data['parentid'] as int?;
  int? get tarid => data['tarid'] as int?;
}

/// END GETIG

/// BEGIN GETTAR
Future<List<GettarRow>> performGettar(
  Database database, {
  String? uuid,
}) {
  final query = '''
SELECT * FROM tars WHERE uuid = '$uuid';
''';
  return _readQuery(database, query, (d) => GettarRow(d));
}

class GettarRow extends SqliteRow {
  GettarRow(super.data);

  String? get title => data['title'] as String?;
  String? get link => data['link'] as String?;
}

/// END GETTAR

/// BEGIN GITEMS
Future<List<GitemsRow>> performGitems(
  Database database,
) {
  const query = '''
SELECT * FROM Items
''';
  return _readQuery(database, query, (d) => GitemsRow(d));
}

class GitemsRow extends SqliteRow {
  GitemsRow(super.data);

  int get id => data['id'] as int;
  int? get storeid => data['storeid'] as int?;
  String? get name => data['name'] as String?;
  String? get category => data['category'] as String?;
  String? get type => data['type'] as String?;
  String? get sku => data['sku'] as String?;
  String? get unit => data['unit'] as String?;
  double? get stock => data['stock'] as double?;
  String? get location => data['location'] as String?;
  double? get cprice => data['cprice'] as double?;
  double? get sprice => data['sprice'] as double?;
  String? get menu => data['menu'] as String?;
  String? get primaryimg => data['primaryimg'] as String?;
  String? get desc => data['desc'] as String?;
  String? get grp => data['grp'] as String?;
  double? get reorder => data['reorder'] as double?;
  String? get dimen => data['dimen'] as String?;
  double? get weight => data['weight'] as double?;
  String? get color => data['color'] as String?;
  String? get material => data['material'] as String?;
  String? get manufacturer => data['manufacturer'] as String?;
  String? get brand => data['brand'] as String?;
  String? get upc => data['upc'] as String?;
  String? get isbn => data['isbn'] as String?;
  String? get mpn => data['mpn'] as String?;
  String? get ean => data['ean'] as String?;
  String? get imglist => data['imglist'] as String?;
  String? get sync => data['sync'] as String?;
  String? get vendor => data['vendor'] as String?;
  int? get shelflife => data['shelflife'] as int?;
}

/// END GITEMS
