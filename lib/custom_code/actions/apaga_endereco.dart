// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> apagaEndereco(
  String authToken,
  String rua,
  String numero,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:nTbascV0/Apagar_Endereco';

  // Build URL with multiple parameters
  final params = {
    'authToken': authToken,
    'rua': rua,
    'numero': numero,
  };

  final queryString = Uri(queryParameters: params).query;
  final urlWithParams = '$url?$queryString';

  bool sucesso = await chamaEndPoint(urlWithParams, 'DELETE', null, null);
  return sucesso;
}
