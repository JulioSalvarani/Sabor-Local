// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert'; // Import necessário para jsonEncode

Future<dynamic> filtrarProdutos(dynamic produtos, String termo) async {
  // Validações iniciais
  print("EM filtrarProdutos - produtos: $produtos");
  print("EM filtrarProdutos - termo: $termo");
  if (produtos == null) return [];

  if (!(produtos is List) || termo.isEmpty)
    return produtos is List ? produtos : [];

  final t = termo.toLowerCase(); // Pré-processa termo uma vez

  // Filtra a lista
  final resultadoFiltrado = (produtos as List).where((item) {
    if (item is! Map<String, dynamic>) return false;
    final nome = (item['nome'] as String?)?.toLowerCase() ?? '';
    return nome.contains(t);
  }).toList();
  print("EM filtrarProdutos - resultadoFiltrado: $resultadoFiltrado");
  // Atualiza a variável de estado de forma assíncrona
  return resultadoFiltrado;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
