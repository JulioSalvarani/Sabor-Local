// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> pagarComPontos(
  String authToken,
  String codPedido,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:E9xbKwh1/pagarComPontos';

  final body = {
    "authtoken": authToken,
    "cod_pedido": codPedido,
  };

  try {
    bool sucesso = await chamaEndPoint(url, 'POST', body, null);

    if (sucesso) {
      // Return the actual response data from FFAppState
      return FFAppState().respEndPoint;
    } else {
      // Return error information
      return {'success': false, 'error': FFAppState().respEndPointError};
    }
  } catch (e) {
    return {'success': false, 'error': e.toString()};
  }
}
