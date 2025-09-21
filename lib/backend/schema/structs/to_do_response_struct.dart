// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToDoResponseStruct extends BaseStruct {
  ToDoResponseStruct({
    List<ToDoItemStruct>? todos,
    int? total,
    int? skip,
    int? limit,
  })  : _todos = todos,
        _total = total,
        _skip = skip,
        _limit = limit;

  // "todos" field.
  List<ToDoItemStruct>? _todos;
  List<ToDoItemStruct> get todos => _todos ?? const [];
  set todos(List<ToDoItemStruct>? val) => _todos = val;

  void updateTodos(Function(List<ToDoItemStruct>) updateFn) {
    updateFn(_todos ??= []);
  }

  bool hasTodos() => _todos != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "skip" field.
  int? _skip;
  int get skip => _skip ?? 0;
  set skip(int? val) => _skip = val;

  void incrementSkip(int amount) => skip = skip + amount;

  bool hasSkip() => _skip != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;

  void incrementLimit(int amount) => limit = limit + amount;

  bool hasLimit() => _limit != null;

  static ToDoResponseStruct fromMap(Map<String, dynamic> data) =>
      ToDoResponseStruct(
        todos: getStructList(
          data['todos'],
          ToDoItemStruct.fromMap,
        ),
        total: castToType<int>(data['total']),
        skip: castToType<int>(data['skip']),
        limit: castToType<int>(data['limit']),
      );

  static ToDoResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ToDoResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'todos': _todos?.map((e) => e.toMap()).toList(),
        'total': _total,
        'skip': _skip,
        'limit': _limit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'todos': serializeParam(
          _todos,
          ParamType.DataStruct,
          isList: true,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'skip': serializeParam(
          _skip,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
      }.withoutNulls;

  static ToDoResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ToDoResponseStruct(
        todos: deserializeStructParam<ToDoItemStruct>(
          data['todos'],
          ParamType.DataStruct,
          true,
          structBuilder: ToDoItemStruct.fromSerializableMap,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        skip: deserializeParam(
          data['skip'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ToDoResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ToDoResponseStruct &&
        listEquality.equals(todos, other.todos) &&
        total == other.total &&
        skip == other.skip &&
        limit == other.limit;
  }

  @override
  int get hashCode => const ListEquality().hash([todos, total, skip, limit]);
}

ToDoResponseStruct createToDoResponseStruct({
  int? total,
  int? skip,
  int? limit,
}) =>
    ToDoResponseStruct(
      total: total,
      skip: skip,
      limit: limit,
    );
