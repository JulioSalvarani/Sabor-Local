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

Future<dynamic> retornaEnderecosDoCliente(
  String authToken, // O token que você quer enviar
) async {
  // 1. Define a URL base (sem parâmetros)
  final baseUrl =
      'https://x8ki-letl-twmt.n7.xano.io/api:nTbascV0/Pegar_Enderecos_Do_Cliente';

  // 2. CORREÇÃO: Adiciona o 'authToken' como um Query Parameter na URL
  final urlComParametro = '$baseUrl?authToken=$authToken';

  print("URL formatada: $urlComParametro");

  try {
    // 3. CHAMA O ENDPOINT com a URL completa.
    // Body e Headers são nulos, pois o token já está na URL.
    bool sucesso = await chamaEndPoint(urlComParametro, 'GET', null, null);
    print("sucesso: $sucesso");

    if (sucesso) {
      // Pega a resposta do AppState
      final resposta = FFAppState().respEndPoint ?? [];
      print("resposta: $resposta");
      return resposta;
    }
  } catch (e) {
    print("Erro ao buscar endereços: $e");
  }

  return []; // Retorna lista vazia em caso de falha
}
