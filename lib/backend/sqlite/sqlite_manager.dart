import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'tarbase',
      'tarapp.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetcartitemRow>> getcartitem({
    int? itemid,
  }) =>
      performGetcartitem(
        _database,
        itemid: itemid,
      );

  Future<List<GetCartRow>> getCart() => performGetCart(
        _database,
      );

  Future<List<GetChatsRow>> getChats() => performGetChats(
        _database,
      );

  Future<List<AllItemsRow>> allItems() => performAllItems(
        _database,
      );

  Future<List<GetaRow>> geta({
    String? uuid,
  }) =>
      performGeta(
        _database,
        uuid: uuid,
      );

  Future<List<GetparRow>> getpar({
    String? type,
  }) =>
      performGetpar(
        _database,
        type: type,
      );

  Future<List<GetparfRow>> getparf() => performGetparf(
        _database,
      );

  Future<List<FinditemsRow>> finditems({
    String? name,
  }) =>
      performFinditems(
        _database,
        name: name,
      );

  Future<List<GetItemsRow>> getItems({
    String? name,
  }) =>
      performGetItems(
        _database,
        name: name,
      );

  Future<List<GetigRow>> getig() => performGetig(
        _database,
      );

  Future<List<GettarRow>> gettar({
    String? uuid,
  }) =>
      performGettar(
        _database,
        uuid: uuid,
      );

  Future<List<GitemsRow>> gitems() => performGitems(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future add2cart({
    int? storeid,
    int? itemid,
    String? item,
    int? qty,
    int? price,
  }) =>
      performAdd2cart(
        _database,
        storeid: storeid,
        itemid: itemid,
        item: item,
        qty: qty,
        price: price,
      );

  Future updatecart({
    int? qty,
    int? itemid,
  }) =>
      performUpdatecart(
        _database,
        qty: qty,
        itemid: itemid,
      );

  Future add2chats({
    String? a1,
    String? a2,
    String? a2id,
    String? a2img,
    String? type,
    String? lastmsg,
    String? id,
  }) =>
      performAdd2chats(
        _database,
        a1: a1,
        a2: a2,
        a2id: a2id,
        a2img: a2img,
        type: type,
        lastmsg: lastmsg,
        id: id,
      );

  Future addItems({
    int? id,
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
    String? created,
    String? sync,
    String? primaryimg,
    String? desc,
    String? group,
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
    String? shelflife,
    int? groupid,
  }) =>
      performAddItems(
        _database,
        id: id,
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
        created: created,
        sync: sync,
        primaryimg: primaryimg,
        desc: desc,
        group: group,
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
        groupid: groupid,
      );

  Future updateaa({
    int? id,
    String? email,
    String? username,
    String? name,
    String? description,
    String? status,
    String? about,
    String? skills,
    String? works,
    String? social,
    String? store,
    String? video,
    String? doc,
    String? image,
    String? phone,
  }) =>
      performUpdateaa(
        _database,
        id: id,
        email: email,
        username: username,
        name: name,
        description: description,
        status: status,
        about: about,
        skills: skills,
        works: works,
        social: social,
        store: store,
        video: video,
        doc: doc,
        image: image,
        phone: phone,
      );

  Future addpar({
    int? id,
    String? name,
    String? type,
    int? fsize,
    String? filedata,
    String? filepath,
    String? descr,
    int? tarid,
    String? par,
    String? views,
    String? status,
    String? tags,
    String? sync,
    String? thumbnail,
    String? analytics,
    String? uploaded,
  }) =>
      performAddpar(
        _database,
        id: id,
        name: name,
        type: type,
        fsize: fsize,
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
        uploaded: uploaded,
      );

  Future upparls({
    int? id,
    String? lastsync,
  }) =>
      performUpparls(
        _database,
        id: id,
        lastsync: lastsync,
      );

  Future addparf({
    String? id,
    String? title,
    String? currentdb,
    String? siteid,
    String? email,
    int? posts,
  }) =>
      performAddparf(
        _database,
        id: id,
        title: title,
        currentdb: currentdb,
        siteid: siteid,
        email: email,
        posts: posts,
      );

  Future addig({
    int? id,
    String? created,
    String? name,
    String? description,
    int? parentid,
    int? tarid,
    String? status,
    String? tags,
    String? sync,
    String? analytics,
  }) =>
      performAddig(
        _database,
        id: id,
        created: created,
        name: name,
        description: description,
        parentid: parentid,
        tarid: tarid,
        status: status,
        tags: tags,
        sync: sync,
        analytics: analytics,
      );

  Future adda({
    int? id,
    String? created,
    String? name,
    String? email,
    String? phone,
    String? username,
    String? image,
    String? status,
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
    String? uuid,
    String? desc,
  }) =>
      performAdda(
        _database,
        id: id,
        created: created,
        name: name,
        email: email,
        phone: phone,
        username: username,
        image: image,
        status: status,
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
        uuid: uuid,
        desc: desc,
      );

  Future addtar({
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
      performAddtar(
        _database,
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

  Future addparaif({
    int? id,
    String? tarid,
    String? title,
    String? currentdb,
    String? siteid,
    String? email,
    int? posts,
  }) =>
      performAddparaif(
        _database,
        id: id,
        tarid: tarid,
        title: title,
        currentdb: currentdb,
        siteid: siteid,
        email: email,
        posts: posts,
      );

  /// END UPDATE QUERY CALLS
}
