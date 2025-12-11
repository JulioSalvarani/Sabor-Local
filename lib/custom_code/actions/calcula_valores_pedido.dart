// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> calculaValoresPedido(
  String pedidoId,
  String? couponCode,
) async {
  try {
    // Create the request body matching Xano's expected format
    final Map<String, dynamic> body = {
      'pedido_id': int.tryParse(pedidoId) ?? 0,
    };

    // Only add couponCode if it's not null and not empty
    if (couponCode != null && couponCode.trim().isNotEmpty) {
      body['couponCode'] = couponCode.trim();
    }

    final url =
        'https://x8ki-letl-twmt.n7.xano.io/api:qWgZGSBh/calcula_valores_pedido';

    print("🧮 Calculating order values for ID: $pedidoId");
    if (couponCode != null && couponCode.trim().isNotEmpty) {
      print("🎫 Applying coupon: $couponCode");
    }
    print("📦 Request body: $body");

    bool success = await chamaEndPoint(url, 'POST', body, null);

    if (success) {
      final response = FFAppState().respEndPoint;
      print("✅ Calculation successful!");

      // Log the individual values for debugging
      if (response is Map) {
        print("   💰 Initial value (resultado): ${response['resultado']}");
        print("   🚚 Delivery fee (resultado2): ${response['resultado2']}");
        print("   🎫 Discount amount (resultado3): ${response['resultado3']}");
        print("   💳 Total (resultado4): ${response['resultado4']}");
        print(
            "   📊 Discount percentage (seresultado3): ${response['seresultado3']}");
      }

      return response;
    } else {
      print("❌ Calculation failed: ${FFAppState().respEndPointError}");
      // Return a default structure that matches the expected format
      return {
        'resultado': 0,
        'resultado2': 0,
        'resultado3': 0,
        'resultado4': 0,
        'seresultado3': 0
      };
    }
  } catch (e) {
    print("💥 Error in calculaValoresPedido: $e");
    // Return a default structure that matches the expected format
    return {
      'resultado': 0,
      'resultado2': 0,
      'resultado3': 0,
      'resultado4': 0,
      'seresultado3': 0
    };
  }
}
