// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> pegaCategoria() async {
  try {
    final url = 'https://x8ki-letl-twmt.n7.xano.io/api:JiwHf8U5/categoria';

    final response = await http.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      // Verifica se a resposta é uma lista
      if (data is List) {
        return data;
      }
      // Se for um objeto com uma propriedade que contém a lista
      else if (data is Map<String, dynamic>) {
        // Tenta encontrar a chave que contém a lista de produtos
        for (var key in data.keys) {
          if (data[key] is List) {
            return data[key];
          }
        }
        // Se não encontrou uma lista, retorna vazio
        return [];
      }
      // Se não for nem lista nem mapa válido
      else {
        throw Exception('Formato de resposta inválido da API');
      }
    } else {
      throw Exception(
          'Falha ao carregar produtos: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    print('Erro ao carregar produtos: $e');
    throw Exception('Erro na comunicação com a API: $e');
  }
}
