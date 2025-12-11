// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> mudaQuantidadeItem(
  String pedidoid,
  int qtd,
  int produtoid,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/mudaQuantidade?pedido_id=$pedidoid&qtd=$qtd&produto_id=$produtoid';

  print("🔍 Calling URL: $url"); // For debugging

  bool sucesso = await chamaEndPoint(url, 'PATCH', null, null);
  return sucesso;
}
