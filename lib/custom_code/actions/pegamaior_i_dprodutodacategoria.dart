// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> pegamaiorIDprodutodacategoria(
  String categoria,
) async {
  // Constrói a URI com query parameter (MESMA LÓGICA DA OUTRA FUNÇÃO)
  final Uri uri = Uri.parse(
    'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/conta_produtos_por_categoria',
  ).replace(queryParameters: {'categoria': categoria.trim()});

  print('🟡 URL completa: ${uri.toString()}');
  print('🟡 Query parameters: ${uri.queryParameters}');

  try {
    // CHAMA O CUSTOM ACTION GENÉRICO! SEM BODY (GET não usa body)
    bool sucesso = await chamaEndPoint(uri.toString(), 'GET', null, null);

    if (sucesso) {
      // The response data is stored in FFAppState().respEndPoint
      final responseData = FFAppState().respEndPoint;

      // Debug: print the response to see the structure
      print('Response data: $responseData');

      // Extract the ID from the response data
      // Adjust these keys based on your actual API response structure
      if (responseData is Map) {
        final maiorID = responseData['biggest_id'] ??
            responseData['id'] ??
            responseData['max_id'] ??
            responseData['maiorID'] ??
            responseData['resultado'] ??
            responseData['data']; // Try common key names

        if (maiorID != null) {
          return maiorID is int
              ? maiorID
              : int.tryParse(maiorID.toString()) ?? 0;
        }
      } else if (responseData is int) {
        // If the response is directly the ID
        return responseData;
      } else if (responseData is String) {
        // If the response is a string that can be parsed to int
        return int.tryParse(responseData) ?? 0;
      }

      return 0; // Return 0 if no valid ID found
    } else {
      // API call failed - check FFAppState().respEndPointError for details
      print('API Error: ${FFAppState().respEndPointError}');
      return 0;
    }
  } catch (e) {
    print('Error fetching maior ID: $e');
    return 0;
  }
}
