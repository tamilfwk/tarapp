import 'package:sqflite/sqflite.dart';

/// BEGIN ADD2CART
Future performAdd2cart(
  Database database, {
  int? storeid,
  int? itemid,
  String? item,
  int? qty,
  int? price,
}) {
  final query = '''
INSERT OR IGNORE INTO Cart (storeid, itemid, item, qty, price) VALUES ($storeid, $itemid, '$item', $qty, $price);
 
''';
  return database.rawQuery(query);
}

/// END ADD2CART

/// BEGIN UPDATECART
Future performUpdatecart(
  Database database, {
  int? qty,
  int? itemid,
}) {
  final query = '''
UPDATE Cart
SET  qty = $qty
WHERE itemid = $itemid;

''';
  return database.rawQuery(query);
}

/// END UPDATECART

/// BEGIN ADD2CHATS
Future performAdd2chats(
  Database database, {
  String? a1,
  String? a2,
  String? a2id,
  String? a2img,
  String? type,
  String? lastmsg,
  String? id,
}) {
  final query = '''
INSERT OR IGNORE INTO chats (a1, a2, a2id, a2img, type, lastmsg, id) 
VALUES ('$a1', '$a2', '$a2id', '$a2img', '$type', '$lastmsg', '$id');
''';
  return database.rawQuery(query);
}

/// END ADD2CHATS

/// BEGIN ADDITEMS
Future performAddItems(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO items (
    id, created, tarid, name, category, type, sku, unit, stock, location, cprice, sprice, menu, sync, primaryimg, desc, "group", groupid,
    reorder, dimen, weight, color, material, manufacturer, brand, upc, isbn, mpn, ean, imglist, vendor, shelflife
) VALUES (
    $id, '$created', $tarid, '$name', '$category', '$type', '$sku', '$unit', $stock, '$location', $cprice, $sprice, '$menu', '$sync', '$primaryimg', '$desc', '$group', $groupid,
    $reorder, '$dimen', $weight, '$color', '$material', '$manufacturer', '$brand', '$upc', '$isbn', '$mpn', '$ean', '$imglist', '$vendor', $shelflife
);
''';
  return database.rawQuery(query);
}

/// END ADDITEMS

/// BEGIN UPDATEAA
Future performUpdateaa(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO aa (
    id, email, username, name, description, status, about, skills, works, social, store, video, doc, image, phone
) VALUES (
    $id, '$email', '$username', '$name', '$description', '$status', '$about', '$skills', '$works', '$social', '$store', '$video', '$doc', '$image', '$phone'
);
''';
  return database.rawQuery(query);
}

/// END UPDATEAA

/// BEGIN ADDPAR
Future performAddpar(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO par (
    id, name, type, fsize, uploaded, filedata, filepath, descr, tarid, par, views, status, tags, sync, thumbnail, analytics
) VALUES (
    $id, '$name', '$type', $fsize, '$uploaded', '$filedata', '$filepath', '$descr', $tarid, '$par', $views, '$status', '$tags', '$sync', '$thumbnail', '$analytics'
);
''';
  return database.rawQuery(query);
}

/// END ADDPAR

/// BEGIN UPPARLS
Future performUpparls(
  Database database, {
  int? id,
  String? lastsync,
}) {
  final query = '''
UPDATE par
SET  lastsync = '$lastsync'
WHERE id = $id;

''';
  return database.rawQuery(query);
}

/// END UPPARLS

/// BEGIN ADDPARF
Future performAddparf(
  Database database, {
  String? id,
  String? title,
  String? currentdb,
  String? siteid,
  String? email,
  int? posts,
}) {
  final query = '''
INSERT OR REPLACE INTO parf (
    id, title, currentdb, siteid, email, posts
) VALUES (
    '$id', '$title', '$currentdb', '$siteid', '$email', $posts
);
''';
  return database.rawQuery(query);
}

/// END ADDPARF

/// BEGIN ADDIG
Future performAddig(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO ig (
    id, created, name, description, parentid, tarid, sync, status, tags, analytics
) VALUES (
    $id, '$created', '$name', '$description', $parentid, $tarid, '$sync', '$status', '$tags', '$analytics'
);
''';
  return database.rawQuery(query);
}

/// END ADDIG

/// BEGIN ADDA
Future performAdda(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO a (
    id, created, name, email, phone, uuid, username, image, status, desc, aa, xt, ig, fb, pi, th, li, wa, sc, rt, tg, sf, dd, rd, ch
) VALUES (
    $id, '$created', '$name', '$email', '$phone', '$uuid', '$username', '$image', '$status', '$desc', '$aa', '$xt', '$ig', '$fb', '$pi', '$th', '$li', '$wa', '$sc', '$rt', '$tg', '$sf', '$dd', '$rd', '$ch'
);
''';
  return database.rawQuery(query);
}

/// END ADDA

/// BEGIN ADDTAR
Future performAddtar(
  Database database, {
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
}) {
  final query = '''
INSERT OR REPLACE INTO tars (
    tarid, created, uuid, type, plan, size, title, thumbnail, link, desc, notes, secrets, notionid, views, analytics
) VALUES (
    $tarid, '$created', '$uuid', '$type', '$plan', $size, '$title', '$thumbnail', '$link', '$desc', '$notes', '$secrets', '$notionid', $views, '$analytics'
);
''';
  return database.rawQuery(query);
}

/// END ADDTAR

/// BEGIN ADDPARAIF
Future performAddparaif(
  Database database, {
  int? id,
  String? tarid,
  String? title,
  String? currentdb,
  String? siteid,
  String? email,
  int? posts,
}) {
  final query = '''
INSERT OR REPLACE INTO paraif (
    id, tarid, title, currentdb, siteid, email, posts
) VALUES (
    $id, '$tarid', '$title', '$currentdb', '$siteid', '$email', $posts
);
''';
  return database.rawQuery(query);
}

/// END ADDPARAIF
