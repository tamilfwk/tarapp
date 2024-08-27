// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultStruct extends BaseStruct {
  ResultStruct({
    List<ColsStruct>? cols,
    List<RowsStruct>? rows,
    int? affectedRowCount,
    String? lastInsertRowid,
    String? replicationIndex,
    int? rowsRead,
    int? rowsWritten,
    double? queryDurationMs,
  })  : _cols = cols,
        _rows = rows,
        _affectedRowCount = affectedRowCount,
        _lastInsertRowid = lastInsertRowid,
        _replicationIndex = replicationIndex,
        _rowsRead = rowsRead,
        _rowsWritten = rowsWritten,
        _queryDurationMs = queryDurationMs;

  // "cols" field.
  List<ColsStruct>? _cols;
  List<ColsStruct> get cols => _cols ?? const [];
  set cols(List<ColsStruct>? val) => _cols = val;

  void updateCols(Function(List<ColsStruct>) updateFn) {
    updateFn(_cols ??= []);
  }

  bool hasCols() => _cols != null;

  // "rows" field.
  List<RowsStruct>? _rows;
  List<RowsStruct> get rows => _rows ?? const [];
  set rows(List<RowsStruct>? val) => _rows = val;

  void updateRows(Function(List<RowsStruct>) updateFn) {
    updateFn(_rows ??= []);
  }

  bool hasRows() => _rows != null;

  // "affected_row_count" field.
  int? _affectedRowCount;
  int get affectedRowCount => _affectedRowCount ?? 0;
  set affectedRowCount(int? val) => _affectedRowCount = val;

  void incrementAffectedRowCount(int amount) =>
      affectedRowCount = affectedRowCount + amount;

  bool hasAffectedRowCount() => _affectedRowCount != null;

  // "last_insert_rowid" field.
  String? _lastInsertRowid;
  String get lastInsertRowid => _lastInsertRowid ?? '';
  set lastInsertRowid(String? val) => _lastInsertRowid = val;

  bool hasLastInsertRowid() => _lastInsertRowid != null;

  // "replication_index" field.
  String? _replicationIndex;
  String get replicationIndex => _replicationIndex ?? '';
  set replicationIndex(String? val) => _replicationIndex = val;

  bool hasReplicationIndex() => _replicationIndex != null;

  // "rows_read" field.
  int? _rowsRead;
  int get rowsRead => _rowsRead ?? 0;
  set rowsRead(int? val) => _rowsRead = val;

  void incrementRowsRead(int amount) => rowsRead = rowsRead + amount;

  bool hasRowsRead() => _rowsRead != null;

  // "rows_written" field.
  int? _rowsWritten;
  int get rowsWritten => _rowsWritten ?? 0;
  set rowsWritten(int? val) => _rowsWritten = val;

  void incrementRowsWritten(int amount) => rowsWritten = rowsWritten + amount;

  bool hasRowsWritten() => _rowsWritten != null;

  // "query_duration_ms" field.
  double? _queryDurationMs;
  double get queryDurationMs => _queryDurationMs ?? 0.0;
  set queryDurationMs(double? val) => _queryDurationMs = val;

  void incrementQueryDurationMs(double amount) =>
      queryDurationMs = queryDurationMs + amount;

  bool hasQueryDurationMs() => _queryDurationMs != null;

  static ResultStruct fromMap(Map<String, dynamic> data) => ResultStruct(
        cols: getStructList(
          data['cols'],
          ColsStruct.fromMap,
        ),
        rows: getStructList(
          data['rows'],
          RowsStruct.fromMap,
        ),
        affectedRowCount: castToType<int>(data['affected_row_count']),
        lastInsertRowid: data['last_insert_rowid'] as String?,
        replicationIndex: data['replication_index'] as String?,
        rowsRead: castToType<int>(data['rows_read']),
        rowsWritten: castToType<int>(data['rows_written']),
        queryDurationMs: castToType<double>(data['query_duration_ms']),
      );

  static ResultStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResultStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cols': _cols?.map((e) => e.toMap()).toList(),
        'rows': _rows?.map((e) => e.toMap()).toList(),
        'affected_row_count': _affectedRowCount,
        'last_insert_rowid': _lastInsertRowid,
        'replication_index': _replicationIndex,
        'rows_read': _rowsRead,
        'rows_written': _rowsWritten,
        'query_duration_ms': _queryDurationMs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cols': serializeParam(
          _cols,
          ParamType.DataStruct,
          isList: true,
        ),
        'rows': serializeParam(
          _rows,
          ParamType.DataStruct,
          isList: true,
        ),
        'affected_row_count': serializeParam(
          _affectedRowCount,
          ParamType.int,
        ),
        'last_insert_rowid': serializeParam(
          _lastInsertRowid,
          ParamType.String,
        ),
        'replication_index': serializeParam(
          _replicationIndex,
          ParamType.String,
        ),
        'rows_read': serializeParam(
          _rowsRead,
          ParamType.int,
        ),
        'rows_written': serializeParam(
          _rowsWritten,
          ParamType.int,
        ),
        'query_duration_ms': serializeParam(
          _queryDurationMs,
          ParamType.double,
        ),
      }.withoutNulls;

  static ResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultStruct(
        cols: deserializeStructParam<ColsStruct>(
          data['cols'],
          ParamType.DataStruct,
          true,
          structBuilder: ColsStruct.fromSerializableMap,
        ),
        rows: deserializeStructParam<RowsStruct>(
          data['rows'],
          ParamType.DataStruct,
          true,
          structBuilder: RowsStruct.fromSerializableMap,
        ),
        affectedRowCount: deserializeParam(
          data['affected_row_count'],
          ParamType.int,
          false,
        ),
        lastInsertRowid: deserializeParam(
          data['last_insert_rowid'],
          ParamType.String,
          false,
        ),
        replicationIndex: deserializeParam(
          data['replication_index'],
          ParamType.String,
          false,
        ),
        rowsRead: deserializeParam(
          data['rows_read'],
          ParamType.int,
          false,
        ),
        rowsWritten: deserializeParam(
          data['rows_written'],
          ParamType.int,
          false,
        ),
        queryDurationMs: deserializeParam(
          data['query_duration_ms'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ResultStruct &&
        listEquality.equals(cols, other.cols) &&
        listEquality.equals(rows, other.rows) &&
        affectedRowCount == other.affectedRowCount &&
        lastInsertRowid == other.lastInsertRowid &&
        replicationIndex == other.replicationIndex &&
        rowsRead == other.rowsRead &&
        rowsWritten == other.rowsWritten &&
        queryDurationMs == other.queryDurationMs;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cols,
        rows,
        affectedRowCount,
        lastInsertRowid,
        replicationIndex,
        rowsRead,
        rowsWritten,
        queryDurationMs
      ]);
}

ResultStruct createResultStruct({
  int? affectedRowCount,
  String? lastInsertRowid,
  String? replicationIndex,
  int? rowsRead,
  int? rowsWritten,
  double? queryDurationMs,
}) =>
    ResultStruct(
      affectedRowCount: affectedRowCount,
      lastInsertRowid: lastInsertRowid,
      replicationIndex: replicationIndex,
      rowsRead: rowsRead,
      rowsWritten: rowsWritten,
      queryDurationMs: queryDurationMs,
    );
