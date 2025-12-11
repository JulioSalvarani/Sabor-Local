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

Future<bool> codSendGrid(
  String from,
  String to,
  String subject,
  String content,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:t4JBjZAs/SendGrid_Email';

  // Monta o body do JSON conforme a API
  final body = {
    "from": from,
    "to": to,
    "subject": subject,
    "content": content,
  };

  // CHAMA O CUSTOM ACTION GENÉRICO!
  bool sucesso = await chamaEndPoint(url, 'POST', body, null);

  // Retorna simplesmente true/false sem tentar acessar debugLog
  return sucesso;
}
