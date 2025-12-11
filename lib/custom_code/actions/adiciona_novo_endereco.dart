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

Future<bool> adicionaNovoEndereco(
  String cep,
  String rua,
  String numero,
  String complemento,
  String referencia,
  String apelido,
  bool padrao,
  String authToken,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:nTbascV0/CriaEnderecoNovo';

  // Monta o body do JSON conforme a API
  final body = {
    "cep": cep,
    "rua": rua,
    "numero": numero,
    "complemento": complemento,
    "referencia": referencia,
    "apelido": apelido,
    "padrao": padrao,
    "authToken": authToken,
  };

  // CHAMA O CUSTOM ACTION GENÉRICO!
  bool sucesso = await chamaEndPoint(url, 'POST', body, null);

  // Retorna simplesmente true/false sem tentar acessar debugLog
  return sucesso;
}
