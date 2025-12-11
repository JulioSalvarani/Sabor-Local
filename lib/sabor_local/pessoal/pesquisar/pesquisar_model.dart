import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pesquisar_widget.dart' show PesquisarWidget;
import 'package:flutter/material.dart';

class PesquisarModel extends FlutterFlowModel<PesquisarWidget> {
  ///  Local state fields for this page.

  dynamic todosprodutos;

  dynamic produtosfiltrados;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;
  // Stores action output result for [Custom Action - filtrarProdutos] action in TextField widget.
  dynamic retornoResposta;
  // Stores action output result for [Custom Action - filtrarProdutos] action in TextField widget.
  dynamic segRetornoResposta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
