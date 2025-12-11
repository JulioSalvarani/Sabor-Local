// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> pegaPedidos(
  String authToken,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/pegaTodosPedidos';

  final body = {
    "authToken": authToken,
  };

  try {
    bool sucesso = await chamaEndPoint(url, 'GET', body, null);

    if (sucesso) {
      return FFAppState().respEndPoint ?? [];
    }
    return [];
  } catch (e) {
    return [];
  }
}
