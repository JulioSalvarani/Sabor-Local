// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';

Future<dynamic> pegaCartaoTKNZD(String authtoken) async {
  // Validate input
  if (authtoken.isEmpty) {
    print("❌ Auth token cannot be empty");
    return [];
  }

  final baseUrl =
      'https://x8ki-letl-twmt.n7.xano.io/api:zhG7S9wm/pega_cartaotknzd';
  final urlComParametro = '$baseUrl?authtoken=$authtoken';

  print("🔍 Fetching card data for token: ${authtoken.substring(0, 10)}...");
  print("🌐 URL: $urlComParametro");

  try {
    bool sucesso = await chamaEndPoint(urlComParametro, 'GET', null, null);

    if (sucesso) {
      final resposta = FFAppState().respEndPoint;
      print("✅ Card data fetched successfully: $resposta");
      return resposta ?? [];
    } else {
      print(
          "❌ Failed to fetch card data. Error: ${FFAppState().respEndPointError}");
      return [];
    }
  } catch (e) {
    print("💥 Exception fetching card data: $e");
    return [];
  }
}
