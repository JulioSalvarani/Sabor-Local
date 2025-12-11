// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

bool validaCPF(String cpf) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  // Remover caracteres não numéricos
  cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

  // Verificar se tem exatamente 11 dígitos
  if (cpf.length != 11) return false;

  // Rejeitar CPFs com todos os dígitos iguais
  if (RegExp(r'^(\d)\1{10}$').hasMatch(cpf)) return false;

  // Calcular o primeiro dígito verificador
  int soma = 0;
  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * (10 - i);
  }
  int primeiroDigito = 11 - (soma % 11);
  if (primeiroDigito >= 10) primeiroDigito = 0;

  // Verificar se bate com o dígito informado
  if (primeiroDigito != int.parse(cpf[9])) return false;

  // Calcular o segundo dígito verificador
  soma = 0;
  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * (11 - i);
  }
  int segundoDigito = 11 - (soma % 11);
  if (segundoDigito >= 10) segundoDigito = 0;

  // Comparar com o último dígito
  if (segundoDigito != int.parse(cpf[10])) return false;

  // Se passou por todas as verificações, é válido
  return true;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
