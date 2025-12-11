// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> pegaItensdoPedido(
  String codPedido,
  String authToken,
) async {
  try {
    // Include both authToken AND codPedido in the URL
    final url =
        'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/pega_itens_pedido?authToken=$authToken&codPedido=$codPedido';

    print("🔍 Calling URL: $url");

    // Call your endpoint function
    bool sucesso = await chamaEndPoint(url, 'GET', null, null);

    print("✅ Endpoint call successful: $sucesso");

    if (sucesso) {
      // Check if response exists in AppState
      final resposta = FFAppState().respEndPoint;
      print("📦 Response data: $resposta");

      if (resposta != null) {
        return resposta;
      } else {
        print("❌ Response is null");
        return [];
      }
    } else {
      print("❌ Endpoint call failed");
      return [];
    }
  } catch (e, stackTrace) {
    print("💥 Error fetching order items: $e");
    print("🔄 Stack trace: $stackTrace");
    return [];
  }
}
