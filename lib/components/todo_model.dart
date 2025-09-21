import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'todo_widget.dart' show TodoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TodoModel extends FlutterFlowModel<TodoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (updateToDo)] action in Checkbox widget.
  ApiCallResponse? updateApiCall;
  // Stores action output result for [Backend Call - API (updateToDo)] action in Checkbox widget.
  ApiCallResponse? updateApiCallCopy;
  // Stores action output result for [Backend Call - API (deletetodo)] action in Icon widget.
  ApiCallResponse? deleteAPiCall;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
