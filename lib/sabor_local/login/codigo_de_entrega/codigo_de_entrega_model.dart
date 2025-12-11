import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'codigo_de_entrega_widget.dart' show CodigoDeEntregaWidget;
import 'package:flutter/material.dart';

class CodigoDeEntregaModel extends FlutterFlowModel<CodigoDeEntregaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - comparaCodigo6PINSenha] action in Button widget.
  bool? chamaEndPoint;

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
