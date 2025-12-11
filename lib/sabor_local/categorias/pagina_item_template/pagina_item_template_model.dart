import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_item_template_widget.dart' show PaginaItemTemplateWidget;
import 'package:flutter/material.dart';

class PaginaItemTemplateModel
    extends FlutterFlowModel<PaginaItemTemplateWidget> {
  ///  Local state fields for this page.

  String? titulo;

  int? valor;

  String? descricao;

  String? foto;

  dynamic pegaProdutosAleatorios;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - carregaProdutoPorId] action in PaginaItem_Template widget.
  dynamic resposta;
  // Stores action output result for [Custom Action - pegaProdutoAleatorios] action in PaginaItem_Template widget.
  dynamic prodsaleatoriosmenosatual;
  // Stores action output result for [Custom Action - criaPedido] action in Button widget.
  bool? funcionando;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
