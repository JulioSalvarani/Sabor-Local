// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> cancelarCobrancaCliente(
  String codPedido,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:zhG7S9wm/cancelar_cobranca_CLIENTE';

  final body = {
    "cod_pedido": codPedido,
  };

  try {
    return await chamaEndPoint(url, 'DELETE', body, null);
  } catch (e) {
    return false;
  }
}
