import '/flutter_flow/flutter_flow_util.dart';
import '/sabor_local/componentes/botao_aplicar/botao_aplicar_widget.dart';
import '/sabor_local/componentes/botao_enviar/botao_enviar_widget.dart';
import '/sabor_local/componentes/quantidade_itens/quantidade_itens_widget.dart';
import '/index.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  dynamic itensCarrinhos;

  bool pedidoEditavel = true;

  bool temcupomdesconto = false;

  dynamic valoresatuaisdisplay;

  double? valorCupom;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - pegaItensdoPedido] action in Checkout widget.
  dynamic pegaPedidoResposta;
  // Stores action output result for [Custom Action - calculaValoresPedido] action in Checkout widget.
  dynamic valorPedido1;
  // Stores action output result for [Custom Action - calculaValoresPedido] action in Checkout widget.
  dynamic valorPedido;
  // Models for quantidade_itens dynamic component.
  late FlutterFlowDynamicModels<QuantidadeItensModel> quantidadeItensModels;
  // Stores action output result for [Custom Action - apagaitempedido] action in Container widget.
  bool? listaapagada;
  // State field(s) for Cupom_Field widget.
  FocusNode? cupomFieldFocusNode;
  TextEditingController? cupomFieldTextController;
  String? Function(BuildContext, String?)? cupomFieldTextControllerValidator;
  // Model for Botao_Enviar component.
  late BotaoEnviarModel botaoEnviarModel;
  // Stores action output result for [Custom Action - calculaValoresPedido] action in Botao_Enviar widget.
  dynamic temcupom;
  // State field(s) for personalizar widget.
  FocusNode? personalizarFocusNode;
  TextEditingController? personalizarTextController;
  String? Function(BuildContext, String?)? personalizarTextControllerValidator;
  // Model for Botao_Aplicar component.
  late BotaoAplicarModel botaoAplicarModel;
  // Stores action output result for [Custom Action - pagarComPontos] action in Botao_Aplicar widget.
  dynamic pagocompontos;

  @override
  void initState(BuildContext context) {
    quantidadeItensModels =
        FlutterFlowDynamicModels(() => QuantidadeItensModel());
    botaoEnviarModel = createModel(context, () => BotaoEnviarModel());
    botaoAplicarModel = createModel(context, () => BotaoAplicarModel());
  }

  @override
  void dispose() {
    quantidadeItensModels.dispose();
    cupomFieldFocusNode?.dispose();
    cupomFieldTextController?.dispose();

    botaoEnviarModel.dispose();
    personalizarFocusNode?.dispose();
    personalizarTextController?.dispose();

    botaoAplicarModel.dispose();
  }
}
