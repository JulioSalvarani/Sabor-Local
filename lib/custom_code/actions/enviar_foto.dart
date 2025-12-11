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
import 'package:http_parser/http_parser.dart';

Future<dynamic> enviarFoto(
  String authToken,
  String fileData,
) async {
  try {
    final url = 'https://x8ki-letl-twmt.n7.xano.io/api:DB95WXkw/Enviar_Foto';

    print("📸 Iniciando upload da foto...");
    print("📄 Dados recebidos (${fileData.length} chars): $fileData");

    // VERIFICAÇÃO CRÍTICA: Se for apenas o nome do arquivo (como parece ser)
    if (fileData.length < 1000) {
      // 55 caracteres é apenas o nome do arquivo, não dados da imagem
      print("⚠️ ATENÇÃO: Parece que apenas o nome do arquivo foi recebido!");
      print(
          "⚠️ Dados da imagem em base64 geralmente têm milhares de caracteres.");
      print(
          "⚠️ Configure o widget Upload Data para retornar os dados da imagem, não apenas o nome.");

      return {
        'success': false,
        'error': 'Apenas o nome do arquivo foi recebido',
        'message':
            'Configure o widget Upload Data para retornar os dados da imagem (base64)',
        'detalhes': 'Nome recebido: $fileData',
        'solucao':
            'No widget Upload Data, selecione "Uploaded File (bytes)" ou outra opção que retorne os dados da imagem'
      };
    }

    // Se chegou aqui, temos dados suficientes para tentar processar

    // Tentar extrair base64 de diferentes formatos
    String base64Data = fileData;

    // 1. Data URL completo (data:image/...;base64,...)
    if (fileData.contains('base64,')) {
      base64Data = fileData.split('base64,').last;
    }
    // 2. Outro formato com vírgula
    else if (fileData.contains(',')) {
      base64Data = fileData.split(',').last;
    }
    // 3. Remover caracteres não-base64
    else {
      // Limpar string removendo tudo que não é base64 válido
      base64Data = fileData.replaceAll(RegExp(r'[^A-Za-z0-9+/=]'), '');
    }

    print("🔍 Base64 processado (${base64Data.length} chars)");

    // Decodificar base64 para bytes
    List<int> bytes;
    try {
      bytes = base64.decode(base64Data);
      print("✅ Base64 decodificado: ${bytes.length} bytes");
    } catch (e) {
      print("❌ Não foi possível decodificar como base64: $e");
      return {
        'success': false,
        'error': 'Dados não são uma imagem base64 válida',
        'message': 'Os dados recebidos não são uma imagem válida'
      };
    }

    // Verificar se temos dados suficientes para uma imagem
    if (bytes.length < 100) {
      return {
        'success': false,
        'error': 'Dados da imagem muito pequenos',
        'message': 'Os dados da imagem são insuficientes'
      };
    }

    // Criar uma requisição multipart
    var request = http.MultipartRequest('POST', Uri.parse(url));

    // Adicionar o arquivo de imagem
    request.files.add(http.MultipartFile.fromBytes(
      'foto',
      bytes,
      filename: 'foto_perfil.jpg',
      contentType: MediaType('image', 'jpeg'),
    ));

    // Adicionar o token de autenticação
    request.fields['authtoken'] = authToken;

    print("🚀 Enviando requisição...");
    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    print("📥 Status: ${response.statusCode}");

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final responseData = jsonDecode(responseBody);
      print("✅ Foto enviada com sucesso!");
      return responseData;
    } else {
      print("❌ Falha: ${response.statusCode}");
      return {
        'success': false,
        'error': 'HTTP ${response.statusCode}',
        'response': responseBody
      };
    }
  } catch (e) {
    print("💥 Erro: $e");
    return {'success': false, 'error': e.toString()};
  }
}
