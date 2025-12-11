// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> apagaitempedido(
  String idcarrinho,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/apaga_item_pedido';

  // For DELETE with your current chamaEndPoint, use query parameters
  final urlWithParams = '$url?idcarrinho=$idcarrinho';

  // CHAMA O CUSTOM ACTION GENÉRICO!
  bool sucesso = await chamaEndPoint(urlWithParams, 'DELETE', null, null);
  return sucesso;
}
