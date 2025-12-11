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

Future<String?> fazCadastroASAAS(
  String authToken,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:t4JBjZAs/criarclienteassas';

  // Monta o body do JSON conforme a API
  final body = {
    "authtoken": authToken,
  };

  // 1. CHAMA A SUA FUNÇÃO GENÉRICA EXISTENTE
  bool sucesso = await chamaEndPoint(url, 'POST', body, null);

  if (sucesso) {
    final responseData = FFAppState().respEndPoint;

    if (responseData is Map<String, dynamic>) {
      // GARANTIR que sempre retorna String ou null
      final dynamic possibleToken = responseData['authToken'] ??
          responseData['token'] ??
          responseData['access_token'];
      responseData['status'];

      // CONVERTER para String explicitamente
      if (possibleToken != null) {
        return possibleToken.toString(); // ← CONVERSÃO GARANTIDA
      }
    }
  }

  return null; // ← NULL EXPLÍCITO (por isso precisa do "Nullable")
}
