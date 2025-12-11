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

Future<String?> fazCadastro(
  String name,
  String email,
  String password,
  String celular,
  String cpf,
  String pin,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:p0uIQjjA/API_de_Cadastro';

  // Monta o body do JSON conforme a API
  final body = {
    "name": name,
    "email": email,
    "password": password,
    "telefone_celular": celular,
    "cpf": cpf,
    "pinenviado": pin
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

      // CONVERTER para String explicitamente
      if (possibleToken != null) {
        return possibleToken.toString(); // ← CONVERSÃO GARANTIDA
      }
    }
  }

  return null; // ← NULL EXPLÍCITO (por isso precisa do "Nullable")
}
