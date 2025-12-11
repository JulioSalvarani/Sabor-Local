import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'enderecos_widget.dart' show EnderecosWidget;
import 'package:flutter/material.dart';

class EnderecosModel extends FlutterFlowModel<EnderecosWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - retornaEnderecosDoCliente] action in Enderecos widget.
  dynamic enderecos;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Custom Action - editaPadrao] action in Checkbox widget.
  bool? suqeso;
  // Stores action output result for [Custom Action - apagaEndereco] action in Icon widget.
  bool? suceso;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
