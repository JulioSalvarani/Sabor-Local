// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> chamaEndPoint(
  String? url,
  String metodo,
  dynamic body,
  dynamic headers,
) async {
  if (url == null || url.isEmpty) {
    FFAppState().update(() {
      FFAppState().respEndPointError = 'URL não fornecida';
    });
    return false;
  }

  try {
    // Parse the initial URI (this preserves any existing query parameters in the URL)
    Uri uri = Uri.parse(url);

    // For GET and DELETE methods, if body is provided and is a Map,
    // merge the body parameters with existing query parameters
    if (body != null &&
        body is Map &&
        ['GET', 'DELETE'].contains(metodo.toUpperCase())) {
      final Map<String, String> bodyParams = body.cast<String, String>();
      final Map<String, String> existingParams = Map.from(uri.queryParameters);

      // Merge existing query parameters with body parameters
      // Body parameters will override existing ones with the same name
      final Map<String, String> mergedParams = {
        ...existingParams,
        ...bodyParams
      };

      // Create new URI with merged parameters
      uri = uri.replace(queryParameters: mergedParams);
    }

    final bodyString =
        body != null && ['POST', 'PUT', 'PATCH'].contains(metodo.toUpperCase())
            ? jsonEncode(body)
            : null;

    // Define headers padrão ou usa os headers fornecidos
    final Map<String, String> defaultHeaders = {
      "Content-Type": "application/json"
    };
    final Map<String, String>? requestHeaders =
        headers is Map ? headers.cast<String, String>() : null;

    http.Response response;
    switch (metodo.toUpperCase()) {
      case 'GET':
        response = await http.get(
          uri,
          headers: requestHeaders ?? {},
        );
        break;
      case 'POST':
        response = await http.post(
          uri,
          headers: requestHeaders ?? defaultHeaders,
          body: bodyString,
        );
        break;
      case 'PUT':
        response = await http.put(
          uri,
          headers: requestHeaders ?? defaultHeaders,
          body: bodyString,
        );
        break;
      case 'PATCH':
        response = await http.patch(
          uri,
          headers: requestHeaders ?? defaultHeaders,
          body: bodyString,
        );
        break;
      case 'DELETE':
        response = await http.delete(
          uri,
          headers: requestHeaders ?? {},
        );
        break;
      default:
        FFAppState().update(() {
          FFAppState().respEndPointError = 'Método HTTP não suportado: $metodo';
        });
        return false;
    }

    dynamic data;
    try {
      data = jsonDecode(response.body);
    } catch (e) {
      data = response.body;
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      FFAppState().update(() {
        FFAppState().respEndPoint = data;
      });
      return true;
    } else {
      FFAppState().update(() {
        FFAppState().respEndPointError =
            (data is Map && data['message'] != null)
                ? data['message'].toString()
                : 'Erro HTTP: ${response.statusCode}';
      });
      return false;
    }
  } catch (e) {
    FFAppState().update(() {
      FFAppState().respEndPointError = 'Erro de conexão: $e';
    });
    return false;
  }
}
