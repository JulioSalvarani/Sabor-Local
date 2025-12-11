import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'codigo_senha_widget.dart' show CodigoSenhaWidget;
import 'package:flutter/material.dart';

class CodigoSenhaModel extends FlutterFlowModel<CodigoSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - comparaCodigo6PINSenha] action in Button widget.
  bool? chamaEndPoint;
  // Stores action output result for [Custom Action - geraPin] action in RichTextSpan widget.
  String? pin;
  // Stores action output result for [Custom Action - reenviaCodigo6PIN] action in RichTextSpan widget.
  bool? resultado;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
