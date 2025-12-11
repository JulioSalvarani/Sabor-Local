import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_principal_widget.dart' show PaginaPrincipalWidget;
import 'package:flutter/material.dart';

class PaginaPrincipalModel extends FlutterFlowModel<PaginaPrincipalWidget> {
  ///  Local state fields for this page.

  dynamic produtosFiltrados;

  dynamic todosProdutos;

  ///  State fields for stateful widgets in this page.

  // State field(s) for nomecategoria widget.
  FocusNode? nomecategoriaFocusNode;
  TextEditingController? nomecategoriaTextController;
  String? Function(BuildContext, String?)? nomecategoriaTextControllerValidator;
  // Stores action output result for [Custom Action - filtrarProdutos] action in nomecategoria widget.
  dynamic retornoResposta;
  // Stores action output result for [Custom Action - filtrarProdutos] action in nomecategoria widget.
  dynamic segRetornoResposta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomecategoriaFocusNode?.dispose();
    nomecategoriaTextController?.dispose();
  }
}
