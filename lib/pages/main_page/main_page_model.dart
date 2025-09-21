import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/todo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  Local state fields for this page.

  List<ToDoItemStruct> todoListPS = [];
  void addToTodoListPS(ToDoItemStruct item) => todoListPS.add(item);
  void removeFromTodoListPS(ToDoItemStruct item) => todoListPS.remove(item);
  void removeAtIndexFromTodoListPS(int index) => todoListPS.removeAt(index);
  void insertAtIndexInTodoListPS(int index, ToDoItemStruct item) =>
      todoListPS.insert(index, item);
  void updateTodoListPSAtIndex(int index, Function(ToDoItemStruct) updateFn) =>
      todoListPS[index] = updateFn(todoListPS[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (gettodos)] action in Button widget.
  ApiCallResponse? allTodos;
  // Stores action output result for [Backend Call - API (updateToDo)] action in todo widget.
  ApiCallResponse? updatetodo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
