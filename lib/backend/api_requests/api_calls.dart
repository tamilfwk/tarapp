import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start notion Group Code

class NotionGroup {
  static String getBaseUrl({
    String? auth = '',
  }) =>
      'https://api.notion.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Notion-Version': '2022-06-28',
    'Authorization': '[auth]',
  };
  static GetparcsCall getparcsCall = GetparcsCall();
  static GetparpsCall getparpsCall = GetparpsCall();
  static GetparcidCall getparcidCall = GetparcidCall();
  static UpdatestatusCall updatestatusCall = UpdatestatusCall();
}

class GetparcsCall {
  Future<ApiCallResponse> call({
    String? pageid = '',
    String? createddate = '',
    String? auth = '',
  }) async {
    final baseUrl = NotionGroup.getBaseUrl(
      auth: auth,
    );

    final ffApiRequestBody = '''
{
  "filter": {
    "timestamp": "created_time",
    "created_time": {
      "after": "$createddate"
    }
  },
  "sorts": [
    {
      "timestamp": "created_time",
      "direction": "ascending"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getparcs',
      apiUrl: '$baseUrl/databases/$pageid/query',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? parcids(dynamic response) => (getJsonField(
        response,
        r'''$..results[*].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? crttime(dynamic response) => (getJsonField(
        response,
        r'''$..created_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? parctitle(dynamic response) => (getJsonField(
        response,
        r'''$..text.content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? lastedit(dynamic response) => (getJsonField(
        response,
        r'''$..last_edited_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetparpsCall {
  Future<ApiCallResponse> call({
    String? parcid = '',
    String? auth = '',
  }) async {
    final baseUrl = NotionGroup.getBaseUrl(
      auth: auth,
    );

    const ffApiRequestBody = '''
{
  "filter": {
    "property": "Status",
    "select": {
      "equals": "publish"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getparps',
      apiUrl: '$baseUrl/databases/$parcid/query',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? parp(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].properties.Name.title[*].plain_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? parpids(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetparcidCall {
  Future<ApiCallResponse> call({
    String? parc = '',
    String? auth = '',
  }) async {
    final baseUrl = NotionGroup.getBaseUrl(
      auth: auth,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getparcid',
      apiUrl: '$baseUrl/blocks/$parc/children?page_size=100',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? parcid2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].id''',
      ));
}

class UpdatestatusCall {
  Future<ApiCallResponse> call({
    String? parpid = '',
    String? auth = '',
  }) async {
    final baseUrl = NotionGroup.getBaseUrl(
      auth: auth,
    );

    const ffApiRequestBody = '''
{
  "properties": {
    "Status": {
      "select": {
        "name": "live"
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatestatus',
      apiUrl: '$baseUrl/pages/$parpid',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End notion Group Code

/// Start parnotion Group Code

class ParnotionGroup {
  static String getBaseUrl({
    String? secret = '',
  }) =>
      'https://api.notion.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Notion-Version': '2022-06-28',
    'Authorization': 'Bearer [secret]',
  };
  static CreatefolderCall createfolderCall = CreatefolderCall();
  static CreatepostCall createpostCall = CreatepostCall();
  static CreatesubfolderCall createsubfolderCall = CreatesubfolderCall();
}

class CreatefolderCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? siteid = '',
    String? secret = '',
  }) async {
    final baseUrl = ParnotionGroup.getBaseUrl(
      secret: secret,
    );

    final ffApiRequestBody = '''
{
  "parent": {
    "type": "database_id",
    "database_id": "$siteid"
  },
  "properties": {
    "title": {
      "title": [
        {
          "type": "text",
          "text": {
            "content": "$title"
          }
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createfolder',
      apiUrl: '$baseUrl/pages',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': 'Bearer $secret',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? folderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreatepostCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? dbid = '',
    String? secret = '',
  }) async {
    final baseUrl = ParnotionGroup.getBaseUrl(
      secret: secret,
    );

    final ffApiRequestBody = '''
{
  "parent": {
    "type": "database_id",
    "database_id": "$dbid"
  },
  "properties": {
    "title": {
      "title": [
        {
          "type": "text",
          "text": {
            "content": "$title"
          }
        }
      ]
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createpost',
      apiUrl: '$baseUrl/pages',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': 'Bearer $secret',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? folderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreatesubfolderCall {
  Future<ApiCallResponse> call({
    String? folderid = '',
    String? subfolder = '',
    String? secret = '',
  }) async {
    final baseUrl = ParnotionGroup.getBaseUrl(
      secret: secret,
    );

    final ffApiRequestBody = '''
{
  "parent": {
    "type": "page_id",
    "page_id": "$folderid"
  },
  "title": [
    {
      "type": "text",
      "text": {
        "content": "$subfolder"
      }
    }
  ],
  "properties": {
    "title": {
      "title": {}
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createsubfolder',
      apiUrl: '$baseUrl/databases',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': 'Bearer $secret',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? subfolderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

/// End parnotion Group Code

/// Start groq Group Code

class GroqGroup {
  static String getBaseUrl() => 'https://api.groq.com/openai/v1';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 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',
  };
  static TextCall textCall = TextCall();
  static AudioCall audioCall = AudioCall();
}

class TextCall {
  Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    final baseUrl = GroqGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "$message"
    }
  ],
  "model": "llama3-8b-8192"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'text',
      apiUrl: '$baseUrl/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class AudioCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? model = '',
  }) async {
    final baseUrl = GroqGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'audio',
      apiUrl: '$baseUrl/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'multipart/form-data',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End groq Group Code

/// Start Items Group Code

class ItemsGroup {
  static String getBaseUrl() => 'https://items.wetarteam.workers.dev/';
  static Map<String, String> headers = {};
  static GetCall getCall = GetCall();
  static DeleteCall deleteCall = DeleteCall();
  static GetByidCall getByidCall = GetByidCall();
  static UpdateByidCall updateByidCall = UpdateByidCall();
  static CreateCall createCall = CreateCall();
}

class GetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ItemsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get',
      apiUrl: '${baseUrl}items',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ItemsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete',
      apiUrl: '${baseUrl}items/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetByidCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ItemsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get byid',
      apiUrl: '${baseUrl}items/?id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateByidCall {
  Future<ApiCallResponse> call({
    int? id,
    int? storeid,
    String? name = '',
    String? category = '',
    String? type = '',
    String? sku = '',
    String? unit = '',
    double? stock,
    String? location = '',
    double? cprice,
    double? sprice,
    String? menu = '',
    String? sync = '',
    String? primaryimg = '',
    String? desc = '',
    String? grp = '',
    String? imgs = '',
    double? reorder,
    String? dimen = '',
    double? weight,
    String? color = '',
    String? material = '',
    String? manufacturer = '',
    String? brand = '',
    String? upc = '',
    String? isbn = '',
    String? mpn = '',
    String? ean = '',
    String? imglist = '',
    String? vendor = '',
    String? shelflife = '',
  }) async {
    final baseUrl = ItemsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "storeid": "$storeid",
  "name": "$name",
  "category": "$category",
  "type": "$type",
  "sku": "$sku",
  "unit": "$unit",
  "stock": "$stock",
  "location": "$location",
  "cprice": "$cprice",
  "sprice": "$sprice",
  "menu": "$menu",
  "sync": "$sync",
  "primaryimg": "$primaryimg",
  "desc": "$desc",
  "grp": "$grp",
  "imgs": "$imgs",
  "reorder": "$reorder",
  "dimen": "$dimen",
  "weight": "$weight",
  "color": "$color",
  "material": "$material",
  "manufacturer": "$manufacturer",
  "brand": "$brand",
  "upc": "$upc",
  "isbn": "$isbn",
  "mpn": "$mpn",
  "ean": "$ean",
  "imglist": "$imglist",
  "vendor": "$vendor",
  "shelflife": "$shelflife"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update byid',
      apiUrl: '${baseUrl}items/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCall {
  Future<ApiCallResponse> call({
    int? storeid,
    String? name = '',
    String? category = '',
    String? type = '',
    String? sku = '',
    String? unit = '',
    double? stock,
    String? location = '',
    double? cprice,
    double? sprice,
    String? menu = '',
    String? sync = '',
    String? primaryimg = '',
    String? desc = '',
    String? grp = '',
    String? imgs = '',
    double? reorder,
    String? dimen = '',
    double? weight,
    String? color = '',
    String? material = '',
    String? manufacturer = '',
    String? brand = '',
    String? upc = '',
    String? isbn = '',
    String? mpn = '',
    String? ean = '',
    String? imglist = '',
    String? vendor = '',
    String? shelflife = '',
  }) async {
    final baseUrl = ItemsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "storeid": "$storeid",
  "name": "$name",
  "category": "$category",
  "type": "$type",
  "sku": "$sku",
  "unit": "$unit",
  "stock": "$stock",
  "location": "$location",
  "cprice": "$cprice",
  "sprice": "$sprice",
  "menu": "$menu",
  "sync": "$sync",
  "primaryimg": "$primaryimg",
  "desc": "$desc",
  "grp": "$grp",
  "imgs": "$imgs",
  "reorder": "$reorder",
  "dimen": "$dimen",
  "weight": "$weight",
  "color": "$color",
  "material": "$material",
  "manufacturer": "$manufacturer",
  "brand": "$brand",
  "upc": "$upc",
  "isbn": "$isbn",
  "mpn": "$mpn",
  "ean": "$ean",
  "imglist": "$imglist",
"vendor": "$vendor",
  "shelflife": "$shelflife"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create',
      apiUrl: '${baseUrl}items/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Items Group Code

/// Start par Group Code

class ParGroup {
  static String getBaseUrl() => 'https://par.wetarteam.workers.dev/';
  static Map<String, String> headers = {};
  static GparCall gparCall = GparCall();
  static DparCall dparCall = DparCall();
  static GidparCall gidparCall = GidparCall();
  static UidparCall uidparCall = UidparCall();
  static CparCall cparCall = CparCall();
}

class GparCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ParGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'gpar',
      apiUrl: '${baseUrl}par',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DparCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ParGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'dpar',
      apiUrl: '${baseUrl}par/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GidparCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ParGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'gidpar',
      apiUrl: '${baseUrl}par/?id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UidparCall {
  Future<ApiCallResponse> call({
    int? id,
    String? name = '',
    String? type = '',
    int? fsize,
    String? filedata = '',
    String? filepath = '',
    String? descr = '',
    String? userid = '',
    String? par = '',
    int? views,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? secrets = '',
    String? siteid = '',
    String? thumbnail = '',
    String? analytics = '',
  }) async {
    final baseUrl = ParGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "name": "$name",
  "type": "$type",
  "fsize": "$fsize",
  "filedata": "$filedata",
  "filepath": "$filepath",
  "descr": "$descr",
  "userid": "$userid",
  "par": "$par",
  "views": "$views",
  "status": "$status",
  "tags": "$tags",
  "sync": "$sync",
  "secrets": "$secrets",
  "siteid": "$siteid",
  "thumbnail": "$thumbnail",
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'uidpar',
      apiUrl: '${baseUrl}par/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CparCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? type = '',
    int? fsize,
    String? uploaded = '',
    String? filedata = '',
    String? filepath = '',
    String? descr = '',
    String? tarid = '',
    String? par = '',
    int? views,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? thumbnail = '',
    String? analytics = '',
  }) async {
    final baseUrl = ParGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "type": "$type",
  "fsize": "$fsize",
  "uploaded": "$uploaded",
  "filedata": "$filedata",
  "filepath": "$filepath",
  "descr": "$descr",
  "tarid": "$tarid",
  "par": "$par",
  "views": "$views",
  "status": "$status",
  "tags": "$tags",
  "sync": "$sync",
  "thumbnail": "$thumbnail",
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cpar',
      apiUrl: '${baseUrl}par/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End par Group Code

/// Start ig Group Code

class IgGroup {
  static String getBaseUrl() => 'https://ig.wetarteam.workers.dev';
  static Map<String, String> headers = {};
  static IgCall igCall = IgCall();
  static IgdelCall igdelCall = IgdelCall();
  static IgidCall igidCall = IgidCall();
  static IgupCall igupCall = IgupCall();
  static IgcCall igcCall = IgcCall();
}

class IgCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = IgGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ig',
      apiUrl: '$baseUrl/ig',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IgdelCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = IgGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'igdel',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IgidCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = IgGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'igid',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IgupCall {
  Future<ApiCallResponse> call({
    int? id,
    String? created = '',
    String? name = '',
    String? description = '',
    int? parentid,
    int? tarid,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? analytics = '',
  }) async {
    final baseUrl = IgGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "created": "$created",
  "name": "$name",
  "description": "$description",
  "parentid": "$parentid",
  "tarid": "$tarid",
  "sync": "$sync",
  "status": "$status",
  "tags": "$tags",
  "analytics": "$analytics"
  }''';
    return ApiManager.instance.makeApiCall(
      callName: 'igup',
      apiUrl: '$baseUrl/ig',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IgcCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    int? parentid,
    int? tarid,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? analytics = '',
  }) async {
    final baseUrl = IgGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "description": "$description",
  "parentid": "$parentid",
  "tarid": "$tarid",
  "sync": "$sync",
  "status": "$status",
  "tags": "$tags",
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'igc',
      apiUrl: '$baseUrl/ig',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ig Group Code

/// Start a Group Code

class AGroup {
  static String getBaseUrl() => 'https://a.wetarteam.workers.dev';
  static Map<String, String> headers = {};
  static ACall aCall = ACall();
  static AdelCall adelCall = AdelCall();
  static AidCall aidCall = AidCall();
  static AupCall aupCall = AupCall();
  static AcCall acCall = AcCall();
}

class ACall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'a',
      apiUrl: '$baseUrl/a',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdelCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = AGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'adel',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AidCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = AGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'aid',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AupCall {
  Future<ApiCallResponse> call({
    int? id,
    String? created = '',
    String? name = '',
    String? description = '',
    int? parentid,
    int? tarid,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? analytics = '',
  }) async {
    final baseUrl = AGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "created": "$created",
  "name": "$name",
  "description": "$description",
  "parentid": "$parentid",
  "tarid": "$tarid",
  "sync": "$sync",
  "status": "$status",
  "tags": "$tags",
  "analytics": "$analytics"
  }''';
    return ApiManager.instance.makeApiCall(
      callName: 'aup',
      apiUrl: '$baseUrl/a',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AcCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? description = '',
    int? parentid,
    int? tarid,
    String? status = '',
    String? tags = '',
    String? sync = '',
    String? analytics = '',
  }) async {
    final baseUrl = AGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "description": "$description",
  "parentid": "$parentid",
  "tarid": "$tarid",
  "sync": "$sync",
  "status": "$status",
  "tags": "$tags",
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ac',
      apiUrl: '$baseUrl/a',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End a Group Code

/// Start tar Group Code

class TarGroup {
  static String getBaseUrl() => 'https://tars.wetarteam.workers.dev';
  static Map<String, String> headers = {};
  static TarCall tarCall = TarCall();
  static TardelCall tardelCall = TardelCall();
  static TaridCall taridCall = TaridCall();
  static TarupCall tarupCall = TarupCall();
  static TarcCall tarcCall = TarcCall();
}

class TarCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tar',
      apiUrl: '$baseUrl/tar',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TardelCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = TarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tardel',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TaridCall {
  Future<ApiCallResponse> call({
    int? tarid,
  }) async {
    final baseUrl = TarGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tarid',
      apiUrl: '$baseUrl/?tarid=$tarid',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TarupCall {
  Future<ApiCallResponse> call({
    int? tarid,
    int? uuid,
    String? type = '',
    String? plan = '',
    int? size,
    String? title = '',
    String? thumbnail = '',
    String? link = '',
    String? desc = '',
    String? notes = '',
    String? secrets = '',
    String? notionid = '',
    int? views,
    String? analytics = '',
  }) async {
    final baseUrl = TarGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tarid": "$tarid",
  "uuid": "$uuid",
  "type": "$type",
  "plan": "$plan",
  "size": $size,
  "title": "$title",
  "thumbnail": "$thumbnail",
  "link": "$link",
  "desc": "$desc",
  "notes": "$notes",
  "secrets": "$secrets",
  "notionid": "$notionid",
  "views": $views,
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tarup',
      apiUrl: '$baseUrl/?tarid=$tarid',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TarcCall {
  Future<ApiCallResponse> call({
    int? uuid,
    String? type = '',
    String? plan = '',
    int? size,
    String? title = '',
    String? thumbnail = '',
    String? link = '',
    String? desc = '',
    String? notes = '',
    String? secrets = '',
    String? notionid = '',
    int? views,
    String? analytics = '',
  }) async {
    final baseUrl = TarGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "$uuid",
  "type": "$type",
  "plan": "$plan",
  "size": $size,
  "title": "$title",
  "thumbnail": "$thumbnail",
  "link": "$link",
  "desc": "$desc",
  "notes": "$notes",
  "secrets": "$secrets",
  "notionid": "$notionid",
  "views": $views,
  "analytics": "$analytics"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tarc',
      apiUrl: '$baseUrl/tars',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End tar Group Code

/// Start paraif Group Code

class ParaifGroup {
  static String getBaseUrl() => 'https://paraif.wetarteam.workers.dev';
  static Map<String, String> headers = {};
  static ParaifCall paraifCall = ParaifCall();
  static ParaifdelCall paraifdelCall = ParaifdelCall();
  static ParaifidCall paraifidCall = ParaifidCall();
  static ParaifupCall paraifupCall = ParaifupCall();
  static ParaifcCall paraifcCall = ParaifcCall();
}

class ParaifCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ParaifGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'paraif',
      apiUrl: '$baseUrl/paraif',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ParaifdelCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ParaifGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'paraifdel',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ParaifidCall {
  Future<ApiCallResponse> call({
    int? tarid,
  }) async {
    final baseUrl = ParaifGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'paraifid',
      apiUrl: '$baseUrl/?tarid=$tarid',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ParaifupCall {
  Future<ApiCallResponse> call({
    int? id,
    String? tarid = '',
    String? title = '',
    String? currentdb = '',
    String? siteid = '',
    String? email = '',
    int? posts,
  }) async {
    final baseUrl = ParaifGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": "$id",
  "tarid": "$tarid",
  "title": "$title",
  "currentdb": "$currentdb",
  "siteid": "$siteid",
  "email": "$email",
  "posts": "$posts"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paraifup',
      apiUrl: '$baseUrl/?id=$id',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ParaifcCall {
  Future<ApiCallResponse> call({
    String? tarid = '',
    String? title = '',
    String? currentdb = '',
    String? siteid = '',
    String? email = '',
    int? posts,
  }) async {
    final baseUrl = ParaifGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tarid": "$tarid",
  "title": "$title",
  "currentdb": "$currentdb",
  "siteid": "$siteid",
  "email": "$email",
  "posts": "$posts"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'paraifc',
      apiUrl: '$baseUrl/paraif',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End paraif Group Code

class NotionaccesstokenCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) async {
    final ffApiRequestBody = '''
{
  "grant_type": "authorization_code",
  "code": "$code",
  "redirect_uri": "https://tar.parai.space/terms"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'notionaccesstoken',
      apiUrl: 'https://api.notion.com/v1/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic MzY3YjhjMzUtN2MwYi00MzFiLWFhNTktNzMxNjc4NTUwYjhkOnNlY3JldF9FazlueDdMQkh6WU5ueWFwREhWRFJkQjRUcXZ5YjEyem5lbkN4N0JiVXpL',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GroqCall {
  static Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "$message"
    }
  ],
  "model": "llama3-8b-8192"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'groq',
      apiUrl: 'https://api.groq.com/openai/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ParpostsCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? title = '',
    String? collection = '',
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
INSERT INTO "parposts" ("id", "title", "collection", "content")
VALUES
('$id', "$title", "$collection", "$content");''';
    return ApiManager.instance.makeApiCall(
      callName: 'parposts',
      apiUrl: 'https://tarai.parai.space',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FileUploadCall {
  static Future<ApiCallResponse> call({
    String? fileName = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'file upload',
      apiUrl: 'https://files.wetarteam.workers.dev/upload',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'fileName': fileName,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? username = '',
    String? name = '',
    String? description = '',
    String? status = '',
    String? about = '',
    String? skills = '',
    String? works = '',
    String? social = '',
    String? store = '',
    String? video = '',
    String? doc = '',
    String? image = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": null,
  "email": "$email",
  "username": "$username",
  "name": "$name",
  "description": "$description",
  "status": "$status",
  "about": "$about",
  "skills": "$skills",
  "works": "$works",
  "social": "$social",
  "store": "$store",
  "video": "$video",
  "doc": "$doc",
  "image": "$image",
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create aa',
      apiUrl: 'https://tarhub.nuxt.dev/api/aa',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MailgetaaCall {
  static Future<ApiCallResponse> call({
    String? mail = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'mailgetaa',
      apiUrl: 'https://tarhub.nuxt.dev/api/aa/$mail',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? desc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? about(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.about''',
      ));
  static String? skills(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.skills''',
      ));
  static String? works(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.works''',
      ));
  static String? social(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.social''',
      ));
  static String? store(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.store''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static String? video(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.video''',
      ));
  static String? doc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.doc''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
