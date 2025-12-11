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

import 'dart:math';

Future<String> geraPin() async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  final random = Random();
  const int length = 6;
  int min = pow(10, length - 1).toInt();
  int max = pow(10, length).toInt() - 1;

  int pinNumber = min + random.nextInt(max - min + 1);
  return pinNumber.toString();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
