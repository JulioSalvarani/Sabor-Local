// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> pegaCliente(String authToken) async {
  try {
    // Build the URL with query parameters
    final uri = Uri.parse(
            'https://x8ki-letl-twmt.n7.xano.io/api:E9xbKwh1/consultaCliente')
        .replace(queryParameters: {
      'authtoken': authToken,
    });

    print('Final URI: $uri');

    // Make the request directly
    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      return {
        'success': false,
        'error': 'HTTP ${response.statusCode}',
        'body': response.body
      };
    }
  } catch (e) {
    print('Exception: $e');
    return {'success': false, 'error': e.toString()};
  }
}
