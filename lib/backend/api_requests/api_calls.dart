import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ToDos Group Code

class ToDosGroup {
  static String getBaseUrl() => 'dummyjson.com';
  static Map<String, String> headers = {};
  static GettodosCall gettodosCall = GettodosCall();
  static DeletetodoCall deletetodoCall = DeletetodoCall();
  static UpdateToDoCall updateToDoCall = UpdateToDoCall();
}

class GettodosCall {
  Future<ApiCallResponse> call({
    int? limit = 5,
  }) async {
    final baseUrl = ToDosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'gettodos',
      apiUrl: '${baseUrl}/todos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? gettodolist(dynamic response) => getJsonField(
        response,
        r'''$.todos''',
        true,
      ) as List?;
}

class DeletetodoCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = ToDosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletetodo',
      apiUrl: '${baseUrl}/todos/${id}',
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

class UpdateToDoCall {
  Future<ApiCallResponse> call({
    int? id = 1,
    bool? completed,
  }) async {
    final baseUrl = ToDosGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "completed": ${completed}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateToDo',
      apiUrl: '${baseUrl}/todos/${id}',
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

/// End ToDos Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
