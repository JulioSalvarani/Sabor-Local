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

Future<bool> editaPadrao(
  String rua,
  String numero,
  String authToken,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:nTbascV0/Edita_Endereco_Padrao';

  // Monta o body do JSON conforme a API
  final body = {
    'numero': numero,
    'rua': rua,
    'authToken': authToken,
  };

  // 1. CHAMA A SUA FUNÇÃO GENÉRICA EXISTENTE
  bool sucesso = await chamaEndPoint(url, 'PATCH', body, null);
  return sucesso; // ← NULL EXPLÍCITO (por isso precisa do "Nullable")
}
