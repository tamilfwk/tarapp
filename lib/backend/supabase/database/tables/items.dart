import '../database.dart';

class ItemsTable extends SupabaseTable<ItemsRow> {
  @override
  String get tableName => 'items';

  @override
  ItemsRow createRow(Map<String, dynamic> data) => ItemsRow(data);
}

class ItemsRow extends SupabaseDataRow {
  ItemsRow(super.data);

  @override
  SupabaseTable get table => ItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get storeid => getField<int>('storeid');
  set storeid(int? value) => setField<int>('storeid', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get cprice => getField<int>('cprice');
  set cprice(int? value) => setField<int>('cprice', value);

  int? get sprice => getField<int>('sprice');
  set sprice(int? value) => setField<int>('sprice', value);

  String? get menu => getField<String>('menu');
  set menu(String? value) => setField<String>('menu', value);

  DateTime? get lastupdate => getField<DateTime>('lastupdate');
  set lastupdate(DateTime? value) => setField<DateTime>('lastupdate', value);

  DateTime? get lastsync => getField<DateTime>('lastsync');
  set lastsync(DateTime? value) => setField<DateTime>('lastsync', value);

  String? get primaryimg => getField<String>('primaryimg');
  set primaryimg(String? value) => setField<String>('primaryimg', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get grp => getField<String>('grp');
  set grp(String? value) => setField<String>('grp', value);

  int? get reorder => getField<int>('reorder');
  set reorder(int? value) => setField<int>('reorder', value);

  String? get dimen => getField<String>('dimen');
  set dimen(String? value) => setField<String>('dimen', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get material => getField<String>('material');
  set material(String? value) => setField<String>('material', value);

  String? get manufacturer => getField<String>('manufacturer');
  set manufacturer(String? value) => setField<String>('manufacturer', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  int? get upc => getField<int>('upc');
  set upc(int? value) => setField<int>('upc', value);

  int? get isbn => getField<int>('isbn');
  set isbn(int? value) => setField<int>('isbn', value);

  String? get mpn => getField<String>('mpn');
  set mpn(String? value) => setField<String>('mpn', value);

  int? get ean => getField<int>('ean');
  set ean(int? value) => setField<int>('ean', value);

  String? get imglist => getField<String>('imglist');
  set imglist(String? value) => setField<String>('imglist', value);
}
