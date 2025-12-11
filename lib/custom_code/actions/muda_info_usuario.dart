// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> mudaInfoUsuario(
  String authToken,
  String? email,
  String? telefone,
  String? nome,
) async {
  final url = 'https://x8ki-letl-twmt.n7.xano.io/api:E9xbKwh1/mudaInfo_Usuario';

  final body = {
    "authtoken": authToken,
    if (email != null && email.isNotEmpty) "email": email,
    if (telefone != null && telefone.isNotEmpty) "telefone": telefone,
    if (nome != null && nome.isNotEmpty) "nome": nome,
  };

  try {
    return await chamaEndPoint(url, 'POST', body, null);
  } catch (e) {
    return false;
  }
}
