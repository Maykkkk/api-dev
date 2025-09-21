// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToDoItemStruct extends BaseStruct {
  ToDoItemStruct({
    int? id,
    String? todo,
    bool? completed,
    int? userId,
  })  : _id = id,
        _todo = todo,
        _completed = completed,
        _userId = userId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "todo" field.
  String? _todo;
  String get todo => _todo ?? '';
  set todo(String? val) => _todo = val;

  bool hasTodo() => _todo != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  set completed(bool? val) => _completed = val;

  bool hasCompleted() => _completed != null;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  static ToDoItemStruct fromMap(Map<String, dynamic> data) => ToDoItemStruct(
        id: castToType<int>(data['id']),
        todo: data['todo'] as String?,
        completed: data['completed'] as bool?,
        userId: castToType<int>(data['userId']),
      );

  static ToDoItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ToDoItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'todo': _todo,
        'completed': _completed,
        'userId': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'todo': serializeParam(
          _todo,
          ParamType.String,
        ),
        'completed': serializeParam(
          _completed,
          ParamType.bool,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ToDoItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ToDoItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        todo: deserializeParam(
          data['todo'],
          ParamType.String,
          false,
        ),
        completed: deserializeParam(
          data['completed'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ToDoItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ToDoItemStruct &&
        id == other.id &&
        todo == other.todo &&
        completed == other.completed &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([id, todo, completed, userId]);
}

ToDoItemStruct createToDoItemStruct({
  int? id,
  String? todo,
  bool? completed,
  int? userId,
}) =>
    ToDoItemStruct(
      id: id,
      todo: todo,
      completed: completed,
      userId: userId,
    );
