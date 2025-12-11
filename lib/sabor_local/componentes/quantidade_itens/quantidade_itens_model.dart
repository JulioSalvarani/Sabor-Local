import '/flutter_flow/flutter_flow_util.dart';
import 'quantidade_itens_widget.dart' show QuantidadeItensWidget;
import 'package:flutter/material.dart';

class QuantidadeItensModel extends FlutterFlowModel<QuantidadeItensWidget> {
  ///  Local state fields for this component.

  int? qntItemInteger;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
