// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> enviaProblemaSuporte(
  String authToken,
  String pedidoInformado,
  String problema,
) async {
  final url =
      'https://x8ki-letl-twmt.n7.xano.io/api:E9xbKwh1/enviaProblemaSuporte';

  final body = {
    "authtoken": authToken,
    "pedido_informado": pedidoInformado,
    "problema": problema,
  };

  try {
    return await chamaEndPoint(url, 'POST', body, null);
  } catch (e) {
    return false;
  }
}
