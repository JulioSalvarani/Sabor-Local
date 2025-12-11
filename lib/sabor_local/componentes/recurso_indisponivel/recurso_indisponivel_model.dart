import '/flutter_flow/flutter_flow_util.dart';
import '/sabor_local/componentes/botao_continuar/botao_continuar_widget.dart';
import 'recurso_indisponivel_widget.dart' show RecursoIndisponivelWidget;
import 'package:flutter/material.dart';

class RecursoIndisponivelModel
    extends FlutterFlowModel<RecursoIndisponivelWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Botao_continuar component.
  late BotaoContinuarModel botaoContinuarModel;

  @override
  void initState(BuildContext context) {
    botaoContinuarModel = createModel(context, () => BotaoContinuarModel());
  }

  @override
  void dispose() {
    botaoContinuarModel.dispose();
  }
}
