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

Future<dynamic> pegaProduto(int id) async {
  try {
    final url = 'https://x8ki-letl-twmt.n7.xano.io/api:NMR0Ckltm/produto/$id';

    final response = await http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Decodifica e retorna o JSON do produto
      final produtoJson = json.decode(response.body);
      return produtoJson;
    } else if (response.statusCode == 404) {
      throw Exception('Produto com ID $id não encontrado');
    } else {
      throw Exception(
          'Erro ao carregar produto: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    print('Erro ao carregar produto $id: $e');
    throw e; // Propaga o erro para o FlutterFlow tratar
  }
}
