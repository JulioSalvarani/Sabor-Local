import '/flutter_flow/flutter_flow_util.dart';
import '/sabor_local/componentes/botao_criar/botao_criar_widget.dart';
import '/index.dart';
import 'cadastrar_novo_cartao_widget.dart' show CadastrarNovoCartaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrarNovoCartaoModel
    extends FlutterFlowModel<CadastrarNovoCartaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomecartao widget.
  FocusNode? nomecartaoFocusNode;
  TextEditingController? nomecartaoTextController;
  String? Function(BuildContext, String?)? nomecartaoTextControllerValidator;
  // State field(s) for numerocartao widget.
  FocusNode? numerocartaoFocusNode;
  TextEditingController? numerocartaoTextController;
  late MaskTextInputFormatter numerocartaoMask;
  String? Function(BuildContext, String?)? numerocartaoTextControllerValidator;
  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;
  // State field(s) for anocartao widget.
  FocusNode? anocartaoFocusNode;
  TextEditingController? anocartaoTextController;
  String? Function(BuildContext, String?)? anocartaoTextControllerValidator;
  // State field(s) for mescartao widget.
  FocusNode? mescartaoFocusNode;
  TextEditingController? mescartaoTextController;
  String? Function(BuildContext, String?)? mescartaoTextControllerValidator;
  // Model for Botao_criar component.
  late BotaoCriarModel botaoCriarModel;
  // Stores action output result for [Custom Action - cadastraCartaoTknzd] action in Botao_criar widget.
  bool? cartaoadicionado;

  @override
  void initState(BuildContext context) {
    botaoCriarModel = createModel(context, () => BotaoCriarModel());
  }

  @override
  void dispose() {
    nomecartaoFocusNode?.dispose();
    nomecartaoTextController?.dispose();

    numerocartaoFocusNode?.dispose();
    numerocartaoTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();

    anocartaoFocusNode?.dispose();
    anocartaoTextController?.dispose();

    mescartaoFocusNode?.dispose();
    mescartaoTextController?.dispose();

    botaoCriarModel.dispose();
  }
}
