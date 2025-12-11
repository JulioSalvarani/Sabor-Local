import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'editar_endereco_widget.dart' show EditarEnderecoWidget;
import 'package:flutter/material.dart';

class EditarEnderecoModel extends FlutterFlowModel<EditarEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (chamaendereco)] action in Checkbox widget.
  ApiCallResponse? escolhapreecnhercep;
  // State field(s) for rualogradouro widget.
  FocusNode? rualogradouroFocusNode;
  TextEditingController? rualogradouroTextController;
  String? Function(BuildContext, String?)? rualogradouroTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for referencia widget.
  FocusNode? referenciaFocusNode;
  TextEditingController? referenciaTextController;
  String? Function(BuildContext, String?)? referenciaTextControllerValidator;
  // State field(s) for apelido widget.
  FocusNode? apelidoFocusNode;
  TextEditingController? apelidoTextController;
  String? Function(BuildContext, String?)? apelidoTextControllerValidator;
  // State field(s) for padrao widget.
  bool? padraoValue;
  // Stores action output result for [Custom Action - apagaEndereco] action in Icon widget.
  bool? suceso;
  // Stores action output result for [Custom Action - editaEndereco] action in Button widget.
  bool? deucerto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cepFocusNode?.dispose();
    cepTextController?.dispose();

    rualogradouroFocusNode?.dispose();
    rualogradouroTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    referenciaFocusNode?.dispose();
    referenciaTextController?.dispose();

    apelidoFocusNode?.dispose();
    apelidoTextController?.dispose();
  }
}
