// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> reenviaCodigo6PINSenha(
  String email,
  String pin,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:p0uIQjjA/Muda_Codigo_Troca_Senha';

  // Monta o body do JSON
  final body = {
    "email": email,
    "pin": pin,
  };

  // Headers obrigatórios
  final headers = {
    'Content-Type': 'application/json',
  };

  try {
    // 1. CHAMA A SUA FUNÇÃO GENÉRICA EXISTENTE
    bool sucesso = await chamaEndPoint(url, 'POST', body, headers);

    // 2. SE A CHAMADA FOI BEM-SUCEDIDA, VERIFICA SE TEM TOKEN
    if (sucesso) {
      final responseData = FFAppState().respEndPoint;

      if (responseData is Map<String, dynamic>) {
        // Verifica se existe algum token na resposta
        final dynamic possibleToken = responseData['resultado'] ??
            responseData['token'] ??
            responseData['correto'];

        // SE TEM TOKEN, LOGIN FOI BEM-SUCEDIDO
        if (possibleToken != null) {
          return true; // ✅ LOGIN SUCESSO
        }
      }
    }

    return false; // ❌ LOGIN FALHOU
  } catch (e) {
    print('Erro no login: $e');
    return false; // ❌ LOGIN FALHOU
  }
}
