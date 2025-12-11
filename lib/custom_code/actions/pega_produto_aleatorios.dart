// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> pegaProdutoAleatorios(
  String idprodutoatual,
) async {
  // Constrói a URI com query parameter (MESMA LÓGICA DA OUTRA FUNÇÃO)
  final Uri uri = Uri.parse(
    'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/produtos_aleatorios',
  ).replace(queryParameters: {'idprodutoatual': idprodutoatual.trim()});

  print('🟡 URL completa: ${uri.toString()}');
  print('🟡 Query parameters: ${uri.queryParameters}');

  try {
    // CHAMA O CUSTOM ACTION GENÉRICO! SEM BODY (GET não usa body)
    bool sucesso = await chamaEndPoint(uri.toString(), 'GET', null, null);

    if (sucesso) {
      // The response data is stored in FFAppState().respEndPoint
      final responseData = FFAppState().respEndPoint;

      // Debug: print the response to see the structure
      print('🟢 Response data type: ${responseData.runtimeType}');
      print('🟢 Response data: $responseData');

      // Retorna o JSON completo com todos os produtos
      // Pode ser uma List, Map ou qualquer estrutura que a API retornar
      return responseData;
    } else {
      // API call failed - check FFAppState().respEndPointError for details
      print('🔴 API Error: ${FFAppState().respEndPointError}');

      // Retorna uma lista vazia em caso de erro
      return [];
    }
  } catch (e) {
    print('🔴 Error fetching produtos por categoria: $e');

    // Retorna uma lista vazia em caso de exceção
    return [];
  }
}
