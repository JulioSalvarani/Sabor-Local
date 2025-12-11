import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperar_senha_colocar_widget.dart' show RecuperarSenhaColocarWidget;
import 'package:flutter/material.dart';

class RecuperarSenhaColocarModel
    extends FlutterFlowModel<RecuperarSenhaColocarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for senha1 widget.
  FocusNode? senha1FocusNode;
  TextEditingController? senha1TextController;
  String? Function(BuildContext, String?)? senha1TextControllerValidator;
  // State field(s) for senha2 widget.
  FocusNode? senha2FocusNode;
  TextEditingController? senha2TextController;
  String? Function(BuildContext, String?)? senha2TextControllerValidator;
  // Stores action output result for [Custom Action - mudaSenha] action in Button-Login widget.
  bool? mudou;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    senha1FocusNode?.dispose();
    senha1TextController?.dispose();

    senha2FocusNode?.dispose();
    senha2TextController?.dispose();
  }
}
