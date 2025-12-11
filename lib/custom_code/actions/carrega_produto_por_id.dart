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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> carregaProdutoPorId(String produtoid) async {
  try {
    final url =
        'https://x8ki-letl-twmt.n7.xano.io/api:JiwHf8U5/produto/$produtoid';

    final response = await http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Retorna a resposta COMPLETA - você controla o parsing no workflow
      return json.decode(response.body);
    } else {
      throw Exception('Falha ao carregar produto: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro ao carregar produto $produtoid: $e');
    throw e; // Propaga o erro para o workflow tratar
  }
}
