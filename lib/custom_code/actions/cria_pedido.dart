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

Future<bool> criaPedido(
    String authToken, String idproduto, int quantidade) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/criaPedidasso_Cliente';

  // Monta o body do JSON conforme a API
  final body = {
    "authToken": authToken,
    "idproduto": idproduto,
    "quantidade": quantidade
  };

  // CHAMA O CUSTOM ACTION GENÉRICO!
  bool sucesso = await chamaEndPoint(url, 'POST', body, null);

  // Retorna simplesmente true/false sem tentar acessar debugLog
  return sucesso;
}
